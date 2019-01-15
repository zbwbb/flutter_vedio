// 定义字段
class Post {
  final String title;
  final String author;
  final String imageUrl;
  // 添加一个字段，用来控制 部件的初始状态
  // bool 类型前面要添加 final
  // bool selected = false;

  // 初始化返回一个常量
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

}

final List<Post> posts = [
  Post(
    title: 'wochifanle',
    author: 'zhoubin',
    imageUrl: 'http://img17.3lian.com/d/file/201702/16/12d6bc87a4f120eb0a37598172a64860.jpg'
  ),
  Post(
    title: 'jiushiainidel',
    author: 'wangbei',
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4127614647,126317329&fm=26&gp=0.jpg'
  ),Post(
    title: 'daziran',
    author: 'dingxiaoer',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=0aef26cd5670f50b675b754c2c48698f&imgtype=0&src=http%3A%2F%2Fpic36.photophoto.cn%2F20150810%2F0020032843622097_b.jpg'
  ),
  Post(
    title: 'sengliin',
    author: 'zhaoxong',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=e8a7e38fe6b97b605db1fa942b48be39&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-fo3dSag_xI4khGko9WTAnF6hhy%2Flvpics%2Fh%3D800%2Fsign%3D7bb8332787cb39dbdec06a56e01709a7%2Ff9198618367adab4ec914c8e8dd4b31c8601e4be.jpg'
  ),Post(
    title: 'shidigongyuan',
    author: 'zhuxingzhe',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248051&di=c57f4012ca929ae10f43fa7b09398290&imgtype=0&src=http%3A%2F%2Fpic.hebei.com.cn%2F0%2F10%2F63%2F60%2F10636082_987261.jpg'
  ),
  Post(
    title: 'xihumeijing',
    author: 'zhoudongdong',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248051&di=159edf64fea1f0ffdfb0fb44dd442ed8&imgtype=0&src=http%3A%2F%2Fpic8.photophoto.cn%2F20080917%2F0033033936750193_b.jpg'
  ),Post(
    title: 'youjianxiaodao',
    author: 'shaolin',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248051&di=7ae9985e15355b8427ced34e8e433be2&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140320%2F0034034870281401_b.jpg'
  ),
  Post(
    title: 'xiaoxishui',
    author: 'wangdachui',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248051&di=776780665fb53626700d7e4163e79a0c&imgtype=0&src=http%3A%2F%2Fpic46.nipic.com%2F20140814%2F19268738_232534528000_2.jpg'
  ),
  Post(
    title: 'wochifanle',
    author: 'zhoubin',
    imageUrl: 'http://img17.3lian.com/d/file/201702/16/12d6bc87a4f120eb0a37598172a64860.jpg'
  ),
  Post(
    title: 'jiushiainidel',
    author: 'wangbei',
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4127614647,126317329&fm=26&gp=0.jpg'
  ),Post(
    title: 'daziran',
    author: 'dingxiaoer',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=0aef26cd5670f50b675b754c2c48698f&imgtype=0&src=http%3A%2F%2Fpic36.photophoto.cn%2F20150810%2F0020032843622097_b.jpg'
  ),
  Post(
    title: 'sengliin',
    author: 'zhaoxong',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=e8a7e38fe6b97b605db1fa942b48be39&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-fo3dSag_xI4khGko9WTAnF6hhy%2Flvpics%2Fh%3D800%2Fsign%3D7bb8332787cb39dbdec06a56e01709a7%2Ff9198618367adab4ec914c8e8dd4b31c8601e4be.jpg'
  ),
  Post(
    title: 'wochifanle',
    author: 'zhoubin',
    imageUrl: 'http://img17.3lian.com/d/file/201702/16/12d6bc87a4f120eb0a37598172a64860.jpg'
  ),
  Post(
    title: 'jiushiainidel',
    author: 'wangbei',
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=4127614647,126317329&fm=26&gp=0.jpg'
  ),Post(
    title: 'daziran',
    author: 'dingxiaoer',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=0aef26cd5670f50b675b754c2c48698f&imgtype=0&src=http%3A%2F%2Fpic36.photophoto.cn%2F20150810%2F0020032843622097_b.jpg'
  ),
  Post(
    title: 'sengliin',
    author: 'zhaoxong',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546759248052&di=e8a7e38fe6b97b605db1fa942b48be39&imgtype=0&src=http%3A%2F%2Fgss0.baidu.com%2F-fo3dSag_xI4khGko9WTAnF6hhy%2Flvpics%2Fh%3D800%2Fsign%3D7bb8332787cb39dbdec06a56e01709a7%2Ff9198618367adab4ec914c8e8dd4b31c8601e4be.jpg'
  ),
];