---
title: How to get a free gameserver
desc: This is actually not a scam!
---

Do you wanna play the newest Minecraft modpack with your friends? Or are you thinking about your 100th Terraria playthrough? - But you don't have a server? - Well, I have a solution for you!

We're all aware that game servers can be quite pricey. However, what if I told you that there's a way to get your hands on a powerful game server without spending a dime? And here's the best part – it's not a scam; it's entirely legitimate!

For a while now, I've known that you can access free Amazon instances, but they often come with limited power. But recently, I stumbled upon Oracle Cloud, which offers an always-free tier. What's even more exciting is that they've introduced their Ampere instances, custom ARM-based virtual machines that can deliver up to 4 cores and 24 GB of RAM each month, completely free of charge!

Now, you might be wondering how you can set up a game server using these instances. Well, first things first, you'll need an Oracle Cloud account, which you can create [here](https://www.oracle.com/cloud/free/). I should mention that this step might be a tad trickier than it seems. I encountered some challenges with payment verification, and their customer support wasn't particularly helpful. However, after experimenting with different phone numbers or email addresses, I eventually managed to overcome the hurdle.

Once your account is set up, log in and create a new instance, ensuring that you select an Ampere instance. Don't forget to download the SSH keys for added security.

<center>
    <img src="{{ '/assets/ampere-instance.png' | url }}" alt="Ampere Instance" width="600"/>
</center>

Now you're all set! If there aren't any instances available in your region, try again the next day. It took me two days to secure an instance, but the wait is well worth it.

From this point onward, your instance is yours for free, as long as you put it to good use. Install your favorite game, make sure to open the necessary ports, and let the gaming adventures begin! You can follow [this tutorial](https://blogs.oracle.com/developers/post/) for creating a Minecraft server (I highly recommend exploring Minecraft Vault Hunters). Enjoy endless gaming without breaking the bank!

<center>
    <img src="{{ '/assets/vaulthunters.png' | url }}" alt="VaultHunters Logo" width="600"/>
</center>
