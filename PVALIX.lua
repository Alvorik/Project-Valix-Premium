-- Script Hub was created by notvixinity™#5160, Join our discord server: https://discord.gg/t7sXgFNmgq for support and etc.
-- JOIN IT


local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Project Valix",
    LoadingTitle = "Project Valix Development",
    LoadingSubtitle = "by Developers",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ValixHub"
    },
    Discord = {
       Enabled = false,
       Invite = "t7sXgFNmgq", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Project Valix",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/t7sXgFNmgq)",
       FileName = "ValixKey",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "hello:))"
    }
})


local Main = Window:CreateTab("Home") -- Title, Image
local HomeSection = Main:CreateSection("Main Stuff")

local Paragraph = Main:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Made by notvixinity™#5160"})

-- Values
getgev().SelectedAdmin = nil

-- Functions
function adminstuff()
   if getgev().SelectedAdmin == "Infinite Yield" then
      
      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Succesfully Started Executing Infinite-Yield",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })

      wait(1)
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

   elseif getgev().SelectedAdmin == "Home-Brew" then
      
      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Succesfully Started Executing Home-Brew",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })

      wait(1)
      loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Syntaxx64/HomebrewAdmin/master/Main"))()
      
   elseif getgev().SelectedAdmin == "Fate's Admin" then
      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Succesfully Started Executing Fate's Admin",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })

      wait(1)
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
   end

end

-- Toggles + Buttons + Dropdowns
local speedslider = Main:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 600},
   Increment = 10,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
   end,
})

local jumphack = Main:CreateSlider({
   Name = "JumpPower",
   Range = {50, 600},
   Increment = 10,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(s)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
   end,
})

local AdminDropdown = Main:CreateDropdown({
   Name = "Admin Selection",
   Options = {"Infinite Yield","Home-Brew","Fate's Admin"},
   CurrentOption = "Option 1",
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
      getgev().SelectedAdmin = Option
      adminstuff()
      print("Currently Executing"..Option)
   end,
})

local Button = Main:CreateButton({
   Name = "Simple Spy",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
   end,
})

local Button = Main:CreateButton({
   Name = "Destroy UI.",
   Callback = function()
      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Destroying UI..",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
      
      wait(3.2)

      Rayfield:Destroy()
   end,
})


local Credits = Window:CreateTab("Credits") -- Title, Image
local AHomeSection = Credits:CreateSection("Credits Stuff")

local Paragraph = Credits:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Made by notvixinity™#5160"})


local Button = Credits:CreateButton({
   Name = "Copy Valix's Discord Server",
   Callback = function()

      setclipboard("https://discord.gg/t7sXgFNmgq")
      wait(1)

      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Copied the Official Project Valix Discord Server",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user has copied the discord server :))")
            end
         },
      },
      })

   end,
})

local HomeSection = Credits:CreateSection("Manual Loader")


local ShindoLoader = Credits:CreateButton({
   Name = "Shindo Life",
   Callback = function()
      
      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Sucessfully Started Loading Shindo Life Tab..",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("Loading Shindo Life Shit")
            end
         },
      },
      })

      wait(1.2)

      local Shindo = Window:CreateTab("ShindoLife") -- Title, Image
      local AShindoSection = Shindo:CreateSection("ShindoLife Stuff")
      local Paragraph = Shindo:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Shindo Life"})

      local AShindoSection = Shindo:CreateSection("Menu Stuff")

      local Button = Shindo:CreateButton({
         Name = "Don Hub",
         Callback = function()
            setclipboard("JFAKHSDJKASDHGAS")

            Rayfield:Notify({
               Title = "Project Valix",
               Content = "Succesfully Started Loading Don Hub | Key is Copied to ClipBoard.",
               Duration = 6.5,
               Image = 0,
               Actions = { -- Notification Buttons
                  Ignore = {
                     Name = "Okay!",
                     Callback = function()
                     print("Loading Don Hub")
                  end
               },
            },
            })
            
            wait(3)
            
            repeat pcall(function() source = game:HttpGet('https://gist.github.com/AzureArts/99f5b5cfd49def461216e4d4689757ce/raw',true) end) if source == nil then wait(0.5) warn('HTTP Error, retrying') end until source ~= nil loadstring(source)()
         end,
      })

      local AAShindoSection = Shindo:CreateSection("In-Game Stuff")

      local NightSide = Shindo:CreateButton({
         Name = "NightSide Script",
         Callback = function()
            setclipboard("https://night-side.vercel.app/Finished <-- thats for the key")

            Rayfield:Notify({
               Title = "Project Valix",
               Content = "Succesfully Started Loading Night-Side, Key has been copied to Clipboard.",
               Duration = 6.5,
               Image = 0,
               Actions = { -- Notification Buttons
                  Ignore = {
                     Name = "Okay!",
                     Callback = function()
                     print("Night-Side is being Executed")
                  end
               },
            },
            })
            
            wait(2)

            loadstring(game:HttpGet('https://raw.githubusercontent.com/TrustsenseDev/Utilities/main/Premier.lua', true))()

         end,
      })

      local NukeSide = Shindo:CreateButton({
         Name = "NukeHub",
         Callback = function()
            setclipboard("no key needed")

            Rayfield:Notify({
               Title = "Project Valix",
               Content = "Succesfully Started Loading Nuke Hub, Enjoy.",
               Duration = 6.5,
               Image = 0,
               Actions = { -- Notification Buttons
                  Ignore = {
                     Name = "Okay!",
                     Callback = function()
                     print("UserClicked")
                  end
               },
            },
            })
            
            wait(2)

            loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()

         end,
      })

   end,
})


local BloxfruitsLoader = Credits:CreateButton({
   Name = "Bloxfruits",
   Callback = function()

      Rayfield:Notify({
         Title = "Project Valix",
         Content = "Succesfully Started Loading BloxFruits.",
         Duration = 6.5,
         Image = 0,
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped BloxFruits Loader!")
            end
         },
      },
      })

      wait(3)

      local BloxF = Window:CreateTab("BloxFruits") -- Title, Image
      local BreakInSection = BloxF:CreateSection("BloxFruits Stuff")
      
      local Paragraph = BloxF:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | BloxFruits"})
   
      local Mukuro = BloxF:CreateButton({
         Name = "Mukuro",
         Callback = function()
             
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Mukuro",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
   
             wait(1)
             
             loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
         end,
     })
     
     
     local Ripper = BloxF:CreateButton({
         Name = "Ripper Hub",
         Callback = function()
             
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Ripper",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
   
             wait(1)
             
             loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua'))();
         end,
     })
   
     local HohoHub = BloxF:CreateButton({
         Name = "HoHo Hub",
         Callback = function()
             
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Hoho Hub",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
   
             wait(1)
             
             loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
         end,
     })
   
     local BloxFSection = BloxF:CreateSection("BloxFruits #2 Stuff")
   
   
     local UltraStuff = BloxF:CreateButton({
         Name = "Furk BloxFruits",
         Callback = function()
             
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Furk Bloxfruits",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
             wait(1)
             
             loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/bf", true))()
         end,
     })
     
   
     local Mango = BloxF:CreateButton({
         Name = "Mango",
         Callback = function()
             
                         
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Mango",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
             wait(1)
             
             
             getgenv().WaterMark = true
             loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
         end,
     })
   
     local Vellerius = BloxF:CreateButton({
         Name = "Vellerius",
         Callback = function()
             
                         
             Rayfield:Notify({
                 Title = "Project Valix",
                 Content = "Currently Executing Vellerius",
                 Duration = 6.5,
                 Image = 0,
                 Actions = { -- Notification Buttons
                    Ignore = {
                       Name = "Okay!",
                       Callback = function()
                       print("The user tapped Okay!")
                    end
                 },
              },
             })
   
             wait(1)
             
             
             loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua"))()
         end,
     })



   end,
})


if game.PlaceId == 4620170611 then
   local BreakIn = Window:CreateTab("Break In") -- Title, Image
   local BreakInSection = BreakIn:CreateSection("Break In Stuff")
   
   local Paragraph = BreakIn:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Break In"})

   -- Values
   getgev().SelectedItemGiver = nil
   getgev().ItemGiver = true

   -- Functions
   function ItemSelection()
      while getgev().ItemGiver == true do
         game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(getgev().SelectedItemGiver)
         wait(.1)
      end
   end


   -- Dropdowns + Toggles

   local Dropdown = BreakIn:CreateDropdown({
      Name = "Item Selection",
      Options = {"Apple","Pizza1","Cookie","BloxyCola","Plank"},
      CurrentOption = "Apple",
      Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Option)
         getgev().SelectedItemGiver = Option
         print(Option)
      end,
   })

   local Toggle = BreakIn:CreateToggle({
      Name = "Give Item",
      CurrentValue = false,
      Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgev().ItemGiver = Value
         ItemSelection()
      end,
   })

elseif game.PlaceId == 3851622790 then
   local BreakIn = Window:CreateTab("Break In") -- Title, Image
   local BreakInSection = BreakIn:CreateSection("Break In Stuff")
   
   local Paragraph = BreakIn:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Break In"})

   -- Values
   getgev().SelectedItemGiver = nil
   getgev().ItemGiver = true

   -- Functions
   function ItemSelection()
      while getgev().ItemGiver == true do
         game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(getgev().SelectedItemGiver)
         wait(.1)
      end
   end


   -- Dropdowns + Toggles

   local Dropdown = BreakIn:CreateDropdown({
      Name = "Item Selection",
      Options = {"Apple","Pizza1","Cookie","BloxyCola","Plank"},
      CurrentOption = "Apple",
      Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Option)
         getgev().SelectedItemGiver = Option
         print(Option)
      end,
   })

   local Toggle = BreakIn:CreateToggle({
      Name = "Give Item",
      CurrentValue = false,
      Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgev().ItemGiver = Value
         ItemSelection()
      end,
   })

elseif game.PlaceId == 7449423635 then
   local BloxF = Window:CreateTab("BloxFruits") -- Title, Image
   local BreakInSection = BloxF:CreateSection("BloxFruits Stuff")
   
   local Paragraph = BloxF:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | BloxFruits"})

   local Mukuro = BloxF:CreateButton({
      Name = "Mukuro",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mukuro",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
      end,
  })
  
  
  local Ripper = BloxF:CreateButton({
      Name = "Ripper Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Ripper",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua'))();
      end,
  })

  local HohoHub = BloxF:CreateButton({
      Name = "HoHo Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Hoho Hub",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
      end,
  })

  local BloxFSection = BloxF:CreateSection("BloxFruits #2 Stuff")


  local UltraStuff = BloxF:CreateButton({
      Name = "Furk BloxFruits",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Furk Bloxfruits",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/bf", true))()
      end,
  })
  

  local Mango = BloxF:CreateButton({
      Name = "Mango",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mango",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          getgenv().WaterMark = true
          loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
      end,
  })

  local Vellerius = BloxF:CreateButton({
      Name = "Vellerius",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Vellerius",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua"))()
      end,
  })
   
elseif game.PlaceId == 4442272183 then
   local BloxF = Window:CreateTab("BloxFruits") -- Title, Image
   local BreakInSection = BloxF:CreateSection("BloxFruits Stuff")
   
   local Paragraph = BloxF:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | BloxFruits"})

   local Mukuro = BloxF:CreateButton({
      Name = "Mukuro",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mukuro",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
      end,
  })
  
  
  local Ripper = BloxF:CreateButton({
      Name = "Ripper Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Ripper",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua'))();
      end,
  })

  local HohoHub = BloxF:CreateButton({
      Name = "HoHo Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Hoho Hub",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
      end,
  })

  local BloxFSection = BloxF:CreateSection("BloxFruits #2 Stuff")


  local UltraStuff = BloxF:CreateButton({
      Name = "Furk BloxFruits",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Furk Bloxfruits",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/bf", true))()
      end,
  })
  

  local Mango = BloxF:CreateButton({
      Name = "Mango",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mango",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          getgenv().WaterMark = true
          loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
      end,
  })

  local Vellerius = BloxF:CreateButton({
      Name = "Vellerius",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Vellerius",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua"))()
      end,
  })

elseif game.PlaceId == 2753915549 then
   local BloxF = Window:CreateTab("BloxFruits") -- Title, Image
   local BreakInSection = BloxF:CreateSection("BloxFruits Stuff")
   
   local Paragraph = BloxF:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | BloxFruits"})

   local Mukuro = BloxF:CreateButton({
      Name = "Mukuro",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mukuro",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()
      end,
  })
  
  
  local Ripper = BloxF:CreateButton({
      Name = "Ripper Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Ripper",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/xDestinyx/RipperHub/main/Loader.lua'))();
      end,
  })

  local HohoHub = BloxF:CreateButton({
      Name = "HoHo Hub",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Hoho Hub",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })


          wait(1)
          
          loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
      end,
  })

  local BloxFSection = BloxF:CreateSection("BloxFruits #2 Stuff")


  local UltraStuff = BloxF:CreateButton({
      Name = "Furk BloxFruits",
      Callback = function()
          
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Furk Bloxfruits",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/bf", true))()
      end,
  })
  

  local Mango = BloxF:CreateButton({
      Name = "Mango",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Mango",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          getgenv().WaterMark = true
          loadstring(game:HttpGet("https://gitlab.com/L1ZOT/mango-hub/-/raw/main/Mango-Bloxf-Fruits-Beta"))()
      end,
  })

  local Vellerius = BloxF:CreateButton({
      Name = "Vellerius",
      Callback = function()
          
                      
          Rayfield:Notify({
              Title = "Project Valix",
              Content = "Currently Executing Vellerius",
              Duration = 6.5,
              Image = 0,
              Actions = { -- Notification Buttons
                 Ignore = {
                    Name = "Okay!",
                    Callback = function()
                    print("The user tapped Okay!")
                 end
              },
           },
          })

          wait(1)
          
          
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Corrupt2625/pjv/main/Bloxfruit.lua"))()
      end,
  })

elseif game.PlaceId == 8737602449 then
   local PlsDonate = Window:CreateTab("plsdonate") -- Title, Image
   local BreakInSection = PlsDonate:CreateSection("PlsDonate Stuff")
   
   local Paragraph = PlsDonate:CreateParagraph({Title = "Project Valix", Content = "Project Valix 4.2 | Pls Donate"})

   -- Values
   getgenv().plsbeg = true
   getgenv().Selectedbeg = nil
   getgenv().BegWait = nil
   -- Functions
   function autobeg()
      while getgenv().plsbeg == true do
         print('Current Beging Method is'..getgenv().Selectedbeg)
         
         wait(getgenv().BegWait)
      end
   
   end


   -- Dropdowns + Toggles
   local Dropdown = PlsDonate:CreateDropdown({
      Name = "Beg Message Selection",
      Options = {"Pls Donate to me I'm so close to my goal!","I WONT STOP SPAMMING TILL SOMEONE DONATES TO ME!"},
      CurrentOption = "Pls Donate to me I'm so close to my goal!",
      Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Option)
         getgenv().Selectedbeg = Option
         print('Selected Beging Method is'..Option)
      end,
   })


   local DropdownS = PlsDonate:CreateDropdown({
      Name = "Wait Selection",
      Options = {".5","1","5","10","15","20","30","40","50"},
      CurrentOption = "5",
      Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Option)
         getgenv().BegWait = Option
         print('Beg Wait is Set To'..Option)
      end,
   })








end




