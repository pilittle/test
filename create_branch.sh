if [ -z $1 ]
then
    echo "请输入新的线上版本号"
    exit 1
fi

#定义新的分支名称
NEW_BRANCH_NAME="release/$1"
echo "创建新的分支：" $NEW_BRANCH_NAME
#创建新的分支
git checkout -b $NEW_BRANCH_NAME
#从develop分支合并过来
git merge develop
#推送到远程分支
echo "正在推送到远端"
git push origin $NEW_BRANCH_NAME
