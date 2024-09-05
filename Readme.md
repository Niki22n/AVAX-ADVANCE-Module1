# AVAX-ADVANCE-Module1 DeFi Empire Clone
## Description
The project includes two smart contracts, ERC20 GameToken and SecureVault, designed to enable a decentralized gaming ecosystem on the Avalanche blockchain. Players can explore, make purchases, and engage in battles using digital assets while earning rewards in custom tokens. Players receive choice boards based on their badges, which they can also transfer to friends within the game.

## EVM Subnet Configuration - Step by Step Guide
1. Deploying your EVM subnet using the Avalanche CLI
Run: curl -sSfL https ://raw.githubusercontent.com/ava-labs/avalanche-cli/main/scripts/install.sh | sh -s
Adding Avalanche-CLI to Your PATH :export PATH=~/bin:$PATH >> .bashrc
You can test your installation by running avalanche --version. The tool should print the running version.
2. Add your subnet to Metamask
Make sure your custom EVM subnet is added to Metamask so you can communicate with it. Metamask allows you to send events and interact with smart contracts installed on your subnet.

3. Make sure this is your network of choice in Metamask
Change your Metamask network to a custom EVM subnet so that all transactions and interactions happen on the correct network.

4. Connect Remix to your Metamask
Use the Remix IDE and connect it to Metamask using the Injected Provider service. This connection allows Remix to communicate with your Metamask account and deploy contracts directly from the Remix interface.

5. Define your currency
Execute GameToken.sol contracts with Remix. This token acts as an in-game currency. example NKTA

6. Enable Smart Contracts
Copy and paste your solid smart contract code into Remix. Collect contracts and then deploy them to your custom EVM subnet using Remix's deployment interface.

7. Test your app.
   
## GameToken.sol
The GameToken contract is an ERC20-like token contract with basic functionalities such as transferring tokens, approving allowances, and minting or burning tokens. Key features include:
### Token Management
The contract handles the total token supply, tracks the balances of each account, and manages allowances for delegated transfers.
Transfers
Users can send tokens to other addresses or authorize third parties to transfer tokens on their behalf through allowances.
Minting and Burning
The contract enables the creation of new tokens, adding them to the caller's account, and the destruction of tokens from the caller's balance.

## SecureVault.sol
The SecureVault contract functions as a vault, overseeing player interactions within the game while using GameToken as the primary currency. Its key features include:

### Player Management
Keeps track of players through a Gamer struct, storing details such as token balance, experience points, achievements, battle victories, explorations, voting rights, player level, and name.
Token Operations

Players can deposit (addTokens) or withdraw (removeTokens) tokens from the vault, with their balances being updated accordingly.
Game Interactions

Battles and Exploration: Players can challenge other players in battles (engageBattle) or undertake exploration missions (embarkExplore), earning rewards and experience points.
Purchasing Items: Players can use tokens to buy in-game items (buyItem).
Token Transfer: Allows players to transfer their in-game tokens to other players (transferTokens).
Leaderboard and Achievements

Leaderboard: Tracks a leaderboard ranked by players' token balances and battle wins (getLeaderboard).
Achievements and Rewards: Players can earn additional tokens and rewards based on their achievements and participation (rewardAchievements, awardTokenBonus).
Player Governance and Moderation

Voting Rights: Players can acquire voting rights after accumulating enough experience points.
Player Data Management: Supports adding new players (addPlayer), simulating battles and explorations for testing, and managing player data.

Author:
Nikita

License
This project is licensed under the MIT License  
