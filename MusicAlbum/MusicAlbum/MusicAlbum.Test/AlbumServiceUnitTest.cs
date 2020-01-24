using Moq;
using MusicAlbum.Repository.Repository;
using MusicAlbum.Service.Service;
using System;
//using Microsoft.VisualStudio.TestTools
using Xunit;

namespace MusicAlbum.Test
{
    //[TestClass]
    public class AlbumServiceUnitTest
    {
        //private readonly IAlbumService _albumService;
        //public AlbumServiceUnitTest(IAlbumService albumService)
        //{
        //    this._albumService = albumService;
        //}
        //[TestMethod]
        public void TestMethodGetAlbumDetailsByAlbumId()
        {
            var album = new Mock<IAlbumsRepository>();
            var alm = new AlbumService(album.Object);

            var result = alm.GetAlbumDetailsByAlbumId(1);
            Assert.NotNull(result);
            //Assert.Equal(albumId, result.AlbumId);
        }
    }
}
