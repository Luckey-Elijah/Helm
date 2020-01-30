# Helm Mobile App

A mobile application designed to help improve your mental health.

## Getting Started

How to run the application:

```bash
# Clone our repository
git clone https://github.com/Rob2Tracy/Helm.git

# Move into th directory
cd Helm

# Run our app!
flutter pub get && flutter run lib/View/main.dart
```

## Contributing

This repository is for team members of our Senior Design Project. Those individuals will be the primary contributers to the repository.

Generally speaking the flow will be like so:

### Overview

1. `Fork` the project.
2. `Clone` the project to your local machine.
3. Create `upstream`
4. Create the `branch` you start working on
5. `add` and `commit` your contributions
6. `Pull` from the upstream to the branch you're working on
7. `Push` to the branch you're working on
8. Open a `pull` request

#### Step 1: Fork the project

This is as simple as clicking a button on GitHub. Navigate to the [repository of the project](https://github.com/Rob2Tracy/Helm), then click the fork button at the top right corner.

![Fork the repository](Assets/Documentation/fork_repo.png)

After using the fork button, you’d now have the repository on your GitHub account.

#### Step 2: Clone the project to your local machine

This is the simplest part of Git. Navigate to your forked repository (the repository is now one of your GitHub repositories). The address should look like this: git@github.com:Your-Name/Helm.git

Then, clone the project by typing `git clone <the copied address>` into your command terminal as shown below:

```bash
git clone git@github.com:Your-Name/Helm.git
```

![Clone the repository](Assets/Documentation/clone_fork.png)

#### Step 3: Create upstream

The upstream is necessary to keep track of the difference between the forked repository that is on your Git account and the original repository. This is most useful if you want to contribute to a popular repository.

Some repositories merge pull requests hourly or less, so be safe and assume that the forked repository you have will be behind the original repository.

To create a link to the original repository, copy and paste the following command into your terminal:

```bash
git remote add upstream https://github.com/Rob2Tracy/Helm.git
```

You can use `git pull upstream master` to confirm if there has been any change at the moment (from when you forked the repository to now).

#### Step 4: Create the branch you want to work on

It is nice to create a new branch whenever you want to contribute. This illustrates that the branch is only for that contribution you are about to make. It could be as small as fixing a typo or as large as implementing a new feature. Either way, it’s good practice to create a branch.

Another important part of the branch creation is naming. It is pleasing to use a name that a stranger who knows nothing about the repository can easily understand. If you want to add a login feature, for example, you could create a branch called add-login-feature or login-feature.

To create a branch type the following command into your terminal:

```bash
git checkout -b <your branch name>
```

This command will create the branch and navigate into it. If your branch name is `login-feature`, then you can use the following command:

```bash
git checkout -b login-feature
```

Then add your contributions. After adding your contribution, move on to Step 5.

#### Step 5: Git add and commit your contributions

This is quite simple as well. Stage and commit your changes by typing the following into your terminal.

```bash
git add .
git commit -m 'Commit message'
```

Now, you have the changes staged and committed. What next?

#### Step 6: Pull from upstream to the branch

As explained in step 4, this step is to merge any difference in the upstream into the branch so as to prevent conflicts.

```bash
git pull upstream <branch name>
```

This merges the upstream changes into your current branch.

#### Step 7: Push to the branch you’re working on

Now, you are almost there. Push your changes to the branch you are working on as shown below:

```bash
git push origin <branch name>
```

#### Step 8: Open a pull request

This is the final step for any open source contribution, you are simply saying ‘I have made some changes, would you mind adding it to the project?’.

You open a pull request and if the repository owner or members like what they see, they’ll merge it. Otherwise, they could make changes then merge or request for changes.

To open a pull request, navigate to the forked repository as shown below.

![Make a new pull request](Assets/Documentation/new_pull_request.png)

You’ll see your last push branch, then click on ‘compare and pull request’.

![Compare your pull request](Assets/Documentation/compare_pull_request.png)
