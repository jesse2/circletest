import os

print("Current Directory: {}".format(os.getcwd()))
print("Items in Current Directory:\n{}".format(os.listdir(os.getcwd())))
pth="/home/circleci"
print("Switching to circlecli directory")
os.chdir(pth)
print("Current Directory: {}".format(os.getcwd()))
print("Items in Current Directory:\n{}".format(os.listdir(os.getcwd())))