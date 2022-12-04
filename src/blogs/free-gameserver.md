---
title: How to get a free gameserver
desc: This is actually not a scam!
---

Do you wanna play the newest Minecraft modpack with your friends? Or are you thinking about your 100th Terraria playthrough? - But you don't have a server? - Well, I have a solution for you!

We all know that gameservers are expensive. But did you know that you can get a powerfull gameserver for free? The best part, this is actually not a scam! 

For a long time I have been aware that it is possible to get free Amazone instances, but they are usually very small and not very powerfull. But recently I stumbled upon Oracle Cloud, which offers a always free tier and while their normal instances are not very usefull for a gameserver, they recently added their Ampere instances. These are custom ARM instances and you can get up to 4 cores and 24 GB of RAM each month for free!

So how do you set up a gameserver on these instances? Well, first you have to get a Oracle Cloud account. You can do this [here](https://www.oracle.com/cloud/free/). This might not be as easy as it seems, I had quite some toruble getting the payment verification to work and their support is not very helpfull. But if you try different phone numbers or email addresses you will eventually get it to work.

Now you simply log in to your account and create a new instance. Make sure to select an Ampere instance and download the SSH keys. 

<center>
<img src="{{ '/assets/ampere-instance.png' | url }}" alt="Ampere Instance" width="600"/>
</center>

Now you are good to go! If there is no instance available in your region, just try it again the next day. I had to wait for 2 days until I could get an instance.

From now on you have your instance for free, as long as you use if. Just install your favorite game, make sure to open the ports and enjoy! (I can recommend to check out Minecraft Vault hunters!)

<center>
<img src="{{ '/assets/vaulthunters.png' | url }}" alt="VaultHunters Logo" width="600"/>
</center>