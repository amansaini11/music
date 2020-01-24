using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using MusicAlbum.Model.ModelRec;
using MusicAlbum.Repository.Repository;
using MusicAlbum.Service.Service;

namespace Music.Unit
{
    [TestClass]
    public class UnitTestMusic
    {
        [TestMethod]
        public void GetAlbumDetailWithNull()
        {
            var albumsRepository = new Mock<IAlbumsRepository>();
            var albumService = new AlbumService(albumsRepository.Object);
            var result = albumService.GetAlbumDetailsByAlbumId(4);
            Assert.IsNull(result);
        }

        [TestMethod]
        public void GetSongListWithNull()
        {
            var songsRepository = new Mock<ISongsRepository>();
            var songService = new SongService(songsRepository.Object);
            var result = songService.GetSongList(4, 10, 0, string.Empty);
            Assert.IsNull(result);
            Assert.AreNotEqual(0, result.Count);            
        }

        [TestMethod]
        public void GetSingerDetailWithNull()
        {
            var singersRepository = new Mock<ISingersRepository>();
            var singerService = new SingerService(singersRepository.Object);
            var result = singerService.GetSingerDetailsByAlbumId(4);
            Assert.IsNull(result);
        }
    }
}
