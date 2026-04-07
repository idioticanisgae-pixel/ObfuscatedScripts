                                        local LogService = game : GetService (  
                            "LogService" ) local logHistory = LogService : GetLogHistory ( )
                        local output = " console " local function getMsgType (  
                    enum ) local name = tostring ( enum ) : gsub ( "Enum.MessageType." , "" ) return
                name end for i , log in pairs ( logHistory ) do local entry = string . format (         
                "[%s] %s\n" , getMsgType ( log . messageType ) , log . message ) output = output ..
                entry end local setCP = setclipboard or to_clipboard or 
                ( Clipboard and Clipboard . set ) if setCP then setCP ( 
                output ) print ( "console history copied to clipboard ("
                .. # logHistory .. " entries)" ) if game : GetService ( "StarterGui" ) then game :      
                GetService ( "StarterGui" ) : SetCore ( "SendNotification" , { Title = "Console Dumped" 
                , Text = # logHistory .. " entries copied to clipboard." , Duration = 5 } ) end else    
                        warn ( "Printing to console instead (LOL)." ) print ( output ) end
