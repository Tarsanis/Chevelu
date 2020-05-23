import os

def create_folder():
    os.mkdir("C:\\Users\\Patrick\\Documents\\robotframework_cours\\Test_TC_040")

def create_sub_folder():
    os.mkdir("C:\\Users\\Patrick\\Documents\\robotframework_cours\\Test_TC_040\\Part2")

def create_this_folder(foldername):
    os.mkdir("C:\\Users\\Patrick\\Documents\\robotframework_cours\\" + foldername)

def create_this_sub_folder(foldername, subfoldername):
    os.mkdir("C:\\Users\\Patrick\\Documents\\robotframework_cours\\" + foldername + "\\" + subfoldername)

def concatenate_two_values(val1, val2):
    return val1 + val2
