[33mcommit 719f089be45c1854e79b4767caa2b3475763c699[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;33mtag: Vulcan-factions[m[33m, [m[1;33mtag: Vulcan-facs[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: eastondev <ecordalt@gmail.com>
Date:   Tue Oct 19 19:05:28 2021 -0500

    hope

[1mdiff --git a/pom.xml b/pom.xml[m
[1mindex a290bc7..ad88dbe 100644[m
[1m--- a/pom.xml[m
[1m+++ b/pom.xml[m
[36m@@ -50,8 +50,8 @@[m
 				<artifactId>maven-compiler-plugin</artifactId>[m
 				<version>3.1</version>[m
 				<configuration>[m
[31m-					<source>1.7</source>[m
[31m-					<target>1.7</target>[m
[32m+[m					[32m<source>8</source>[m
[32m+[m					[32m<target>8</target>[m
 					<showDeprecation>true</showDeprecation>[m
 					<showWarnings>true</showWarnings>[m
 				</configuration>[m
[1mdiff --git a/src/main/java/mkremins/fanciful/FancyMessage.java b/src/main/java/mkremins/fanciful/FancyMessage.java[m
[1mindex cc5ebf9..0b9f690 100644[m
[1m--- a/src/main/java/mkremins/fanciful/FancyMessage.java[m
[1m+++ b/src/main/java/mkremins/fanciful/FancyMessage.java[m
[36m@@ -477,7 +477,10 @@[m [mpublic class FancyMessage implements JsonRepresentedObject, Cloneable, Iterable<[m
 [m
 	public void send(Player player, List<FancyMessage> fm) {[m
 		for (int i = 0; i < fm.size(); i++) {[m
[31m-			Bukkit.dispatchCommand(Bukkit.getConsoleSender(), "tellraw " + player.getName() + " " + fm.get(i).toJSONString());[m
[32m+[m			[32mfinal int finalI = i;[m
[32m+[m			[32mBukkit.getScheduler().runTask(Bukkit.getPluginManager().getPlugin("factions"), () -> {[m
[32m+[m			[32mBukkit.dispatchCommand(Bukkit.getConsoleSender(), "tellraw " + player.getName() + " " + fm.get(finalI).toJSONString());[m
[32m+[m			[32m});[m
 		}[m
 	}[m
 [m
