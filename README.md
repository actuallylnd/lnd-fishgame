# lnd-fishgame

- Player have to hover the box over the fish with the Q or E keys and keep the fish in the moving box


```lua
shakeIntensity: number | default is 6

local success = exports['lnd-fishgame']:FishGame(shakeIntensity)

if success then
   ESX.ShowNotification("Congratulations! You won the game!")
else
   ESX.ShowNotification("Unfortunately, you lost the game.")
end
```
https://discord.gg/dEv6tm2epA
