<%-- 
    Document   : album
    Created on : Jul 5, 2023, 5:08:37 PM
    Author     : laiqah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon"
      href="https://cdn4.iconfinder.com/data/icons/kpop-lightstick-2/32/kpop_light_stick-09-512.png" type="image/x-icon">

    <!-- custom css kalian ada di direktori ini -->
    <link rel="stylesheet" href="./css/styles.css">
    <link rel="stylesheet" href="./css/album.css">

    <!-- ini title -->
    <title>Album Taylor Swift</title>

    <!-- ini link css buat manggil slick carousel nya dan make tema bawaan nya slick -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css">

    <!-- SLICK BUTUH JQUERY BUAT RUNNING, Jadi ini script yang dibutuhin buat nge running slick-carrousel (sebenernya 1 aja cukup sih) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
      <main class="main">

        <!-- BAGIAN Sidebar -->
        <aside class="sidebar">
        <nav class="nav">

        <!-- INI BAGIAN LOGO -->
        <div class="logofr">
        <!--<img class="lightstick" src="lightstick.png">-->
        <img class="logo" src="https://i.pinimg.com/564x/69/6a/9e/696a9e1a088e722fbafee71cd6e923aa.jpg">
        </div>

        <!-- INI BAGIAN LINK NAVIGASI -->
        <ul>
        <!-- kelas active digunain buat ngasih efek nyala -->
        
        <li class="active"><a href="">Albums</a></li>
        <li><a href ="./admincommentpage.jsp">Comment</a></li>
       </ul>

        </nav>
            </aside>

            <!-- Ini bagian sebelah kanan -->
            <!-- class="twitter" cuma nama untuk si section biar bisa di edit2 -->
            <section class="beranda">
              <a class="menux">☰</a>

              <div class="container3">

                <div class="kotak-kartu">

                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/5eyZZoQEFQWRHkV2xgAeBw?si=sHDEdEmHR2aibYfGC2DKbw">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tseponymus.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Taylor Swift</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Taylor swift is the eponymous studio album by the single-american country pop writer Taylor swift. The album was released 
                          at the end of 2006 when swift was only 16, with big machine records. Swift wrote a song for the album during his senior 
                          year of high school and had written credit on all album songs including those written with Liz rose. Swift was experimenting 
                          to record albums with several album producers, finally selecting demo producer, Nathan chapman. Musically, this country music 
                          album with style and lyrics, it speaks of romantic relationships. </p>
                      <p> Album studio by Taylor Swift <br>
                            Released : 24 October 2006 <br>
                            Recorded : June–September 2006; The Castles Studios, Dark Horse Recording, Love Shack, Quad Studios-A, Sound Cottage, Sound Emporium[1] <br>
                            Genre : Country, country pop, country rock <br>
                            Duration : 38:26 <br>
                            Label : Big Machine <br>
                            Producer :Scott Borchetta (exec.), Nathan Chapman, Robert Ellis Orrall</p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>15 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/2gP2LMVcIFgVczSJqn340t?si=zdayDnggTMG5wGpzBIacOQ">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsfearless.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Fearless</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Fearless is a second studio album by an American songwriter, Taylor swift. Released on November 11, 2008, by big machine records in the us and Canada, 
                          the international edition was released on March 9, 2009. Mostly written during swift promoting his eponym debut album in 2007-2008, fearless contained 
                          the additional songs written by Liz rose, Hillary lindsey, colbie caillat, and John rich. Swift wrote seven of the thirteen songs in the standard edition 
                          of the album himself, and, in his debut as a record producer, produced the entire song with Nathan chapman. The album entered the top five on the charts and 
                          received multi-platinum certification in Australia, Great Britain, Canada, and New Zealand, and has sold 12 million copies since April 2021. </p>
                      <p>Album Studio by Taylor Swift <br>
                          Released : 11 November 2008 <br>                         
                          Recorded : 2008 <br>
                          Studio : Blackbird (Nashville)<br> 
                          Fool on the Hill (Nashville)<br>
                          Quad (Nashville)<br>
                          Sound Cottage (Nashville)<br>
                          Sound Emporium (Nashville)<br>
                          Starstruck (Nashville)<br>
                          Sound Kitchen (Franklin)<br>
                          Genre : Country pop <br>
                          Duration : 53:41 <br>
                          Label : Big Machine <br>
                          Producer : Nathan ChapmanTaylor Swift </p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>13 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/6Ar2o9KCqcyYF9J0aQP3au?si=5YF34ZVjSlKGksrVWsCTLQ">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsspeaknow.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Speak Now</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Swift's third studio album, "speak now ", was released in 2010. The "speak now" album is the number one on the billboard 
                          charts 200 with a sales of 1,047 million copies and lasting six weeks in no sequential order. The "speak now" album has been 
                          certified four times platinum by riaa and has released two singlees, which are "mine" (2010) and "back to December" (2010), 
                          where the two singlees peak in the top ten hits on the billboard ladder of hot 100.                                                                                         
                          Now is the third studio album by American songwriter Taylor swift, released on October 25, 2011 through big machine records. 
                          Swift wrote an entire song in this album alone for two years, while he promoted fearless's second studio album (2008). Inspired 
                          by the swift transition from a teenager to adulthood, speak now is an album of loose concepts about his confession of love and 
                          heartbreak, with some songs relating to his public experience.</p>
                      <p>Album studio by Taylor Swift <br>
                        Released : 25 October 2010 <br>
                        Studio : Aimeeland (Nashville) <br>
                        Blackbird (Nashville) <br>
                        Pain in the Art (Nashville) <br>
                        Starstruck (Nashville) <br>
                        Capitol (Hollywood) <br>
                        Stonehurst (Bowling Green) <br>
                        Genre : Pop rokcountry poppower pop <br>
                        Duration : 67:29 <br>
                        Label : Big Machine <br>
                        Producer : Nathan ChapmanTaylor Swift</p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>14 songs</h4>
                      <h4>Album Single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/1KVKqWeRuXsJDLTW0VuD29?si=UsbvXlgER96onW_vLDY2VQ">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsred.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Red</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Red is the fourth studio album by singer-songwriter from the United States, Taylor swift. The album was released on October 22, 2012, 
                          by big machine records. The title refers to the boisterous "red" emotion that swift experienced in its contrast to the album; His songs
                          discuss complex and conflicting emotions asa result of the faded romance.Swift's fourth studio album, "red ", released in October 2012. 
                          The red album is ranked first on the billboard charts of 200 for seven weeks in no sequence. The "red" album sold as much as 1.21 million 
                          copies the first week of the album's release, making the "red" album the 18th album in world music history sold more than one million copies 
                          in a week. "We are never ever getting back together "release as the ultimate single" red "album and become the number one hit of swift on the
                          billboard ladder of hot 100. </p>
                      <p>Album studio by Taylor Swift <br>
                          Released : 22 October 2012 <br>
                          Recorded : ca. 2011–2012 <br>
                          Studio : Blackbird (Nashville) <br>
                          Pain in the Art (Nashville)<br>
                          Ballroom West (New York)<br>
                          Instrument Landing (Minneapolis)<br>
                          MXM (Stockholm)<br>
                          Conway (Los Angeles)<br>
                          Village (Los Angeles)<br>
                          Garage (Topanga)<br>
                          Ruby Red (Atlanta)[1]<br>
                          Genre	: Popcountryrok<br>
                          Duration : 65:09<br>
                          Label : Big Machine<br>
                        Producer : Taylor SwiftNathan ChapmanJeff BhaskerDann HuffJacknife LeeMax MartinShellbackButch WalkerDan Wilson </p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>22 songs</h4>
                      <h4>Album Single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/5fy0X0JmZRZnVa2UEicIOl?si=JGqL-4jORu2eii6nUwlBKQ&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/ts1989.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">1989</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>1989 is the fifth studio album by American songwriter Taylor swift. The album was released on October 27, 2014 by big machine records. 
                          After music critics have questioned his status as a country musician following the red (2012) fourth album movement influenced by pop 
                          and electronic music, swift was inspired by the 1980's synth-pop music to recalibrate the music to pop music. Fifth swift studio album, 
                          "1989, "released in October 2014. The "1989" album became the fourth story-topped swift album on the billboard ladder of 200 in a row with 
                          a sales of 1,287 million copies and a third swift album sold over a million copies. The top single "1989" album is "shake it off "," space blank ", 
                          and "bad blood" have topped the billboard charts hot 100.</p>
                      <p>Album studio by Taylor Swift<br>
                          Released : 27 October 2014<br>
                          Recorded : ca. 2013–2014<br> 
                          Studio : Conway Recording (Los Angeles)<br>
                          Jungle City (Kota New York)<br>
                          Lamby's House (Brooklyn)<br>
                          MXM (Stockholm)<br>
                          Pain in the Art (Nashville)<br>
                          Elevator Nobody (Göteborg)<br>
                          The Hideaway[note 2]<br>
                          Genre : Synth-pop<br> 
                          Duration : 48:41<br>
                          Label : Big Machine<br>
                          Producer : Max MartinTaylor SwiftShellbackJack AntonoffRyan TedderNoel ZancanellaAli PayamiNathan ChapmanImogen HeapMattman & Robin</p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>13 songs</h4>
                      <h4>Album Single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/6DEjYFkNZh67HP7R9PSZvv?si=b5jgwUmvRky8CSznknFE2g&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsreputation.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Reputation</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Swift is the sixth studio album by American songwriter Taylor swift. The album was released on November 10, 2017, by big machine records. 
                          Swift became the subject of rampant tabloid surveillance after releasing his fifth studio album 1989 (2014), 
                          with media publishing his personal life and his struggles with other celebrities. Hence, he withdrew from the press and 
                          social media, where he had kept his presence actively, and created a reputation as an attempt to change his mind. This album 
                          is the fourth consecutive swift album that debut at the top of the us billboard of 200 with the sale of the first week of over 1.2 million copies, 
                          and it reaches number one in many countries, including Australia, Canada, and the United Kingdom.</p>
                      <p>Album Studio by Taylor Swift<br>
                          Released : 10 November 2017<br>
                          Recorded : 2017<br>
                          Duration : 55:38<br>
                          Label : Big Machine<br>
                         Producer : Max MartinShellbackAli PayamiJack Antonoff</p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>15 songs</h4>
                      <h4>Album Single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/1NAmidJlEaVgA3MpcPFYGq?si=5PU_o9jSSHKr56P69eaBoQ&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tslover.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Lover</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Lover is the seventh studio album by singer-songwriter Taylor swift. The album was released on August 23, 2019, 
                          via republic records. As executive producers, swift works with producers jack antonoff, Louis bell, frank Dukes 
                          and little Joel on this album. This album is described by swift as "a love letter for love itself," it celebrates 
                          the ebb and fall of love, combining a brighter and more cheerful tone, setting forth from the dark voice of her 
                          predecessor, 2017.Lover has featured collaboration with the brendon urie from panic! At the disco. The album is 
                          preceded by three singles, all getting a top 10 in billboard hot 100; "Me!" and" you need to calm down "get the 
                          highest position on number two, while the title track sits on number 10.</p>
                      <p>Album studio by Taylor Swift<br>
                          Released : 23 August 2019<br>
                          Recorded : November 2018 – 24 February2019<br>
                          Studio : Electric Lady Studios (New York City)<br>
                          Genre : Pop rock[1]<br>
                          Duration : 61:48<br>
                          Label : RepublicTaylor Swift Productions<br>
                          Producer : Taylor Swift (prod. eksekutif)Jack AntonoffLouis BellFrank DukesJoel LittleSounwave</p>
                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>18 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>


                  <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/1pzvBxYgT6OVwJLtHkrdQK?si=VfnIj3iwSFiYyvPV20xfIg&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsfolkrole.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Folkrole</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Certified in all lowercase letters is the eighth studio album by American singer-songwriter Taylor swift. 
                          Reporting is a surprise album, released on July 24, 2020, through republic records. Swift devised a pandemic 
                          in quarantine during the covid-19 pandemic as "a collection of songs and stories flowing like streams of consciousness" 
                          from his imagination. This album was listening to spotify 80.6 million times a day on its release day, the highest number 
                          for female musicians. "Cardigan" gaining no position. 1 on the ladder of the hot 100s billboard song and the billboard reaches for no. 
                          Billboard 1 in the 200 album.</p>
                      <p>Album studio by Taylor Swift<br>
                          Released : 24 July 2020<br>
                          Recorded : April–July 2020<br>
                          Studio : Long Pond (Hudson Valley, New York)<br>
                          Kitty Committee (Los Angeles)<br>
                          Rough Customer (New York City)<br>
                          Electric Lady (New York City)<br>
                          Conway (Los Angeles)<br>
                          Genre : Indie folkalternative rockelectro-folkchamber pop<br>
                          Duration : 63:29<br>
                          Label : Republic<br>
                          Producer : Aaron DessnerJack AntonoffTaylor Swift</p>

                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>17 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>

                    <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/6AORtDjduMM3bupSWzbTSG?si=Wxag069iTwWBnnQ4sNzOJA&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsevermore.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Evermore</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Evermore (written in all lowercase letters, terj. Har. "forever") was the ninth studio album by singer-songwriter of the United 
                          States Taylor swift. The album was released on December 11, 2020, through republic records, less than five months after the singer's 
                          eighth studio album, recordings. Evermore is the spontaneous product of an extension of swift collaboration with producer along with 
                          Aaron dessner, which he has built up creative chemistry together. Evermore is registered by various publications in their final year 
                          ratings for the best 2020 album, and has been nominated for the year's album of the year in the 64th annual grammy awards.</p>
                      <p>Album studio by Taylor Swift<br>
                          Released : 11 December 2020<br>
                          Recorded : July–December 2020<br>
                          Studio : Kitty Committee (Los Angeles)<br>
                          Long Pond (Hudson Valley)<br>
                          Scarlet Pimpernel (London)<br>
                          Rumah Ariel Rechtshaid (Los Angeles)<br>
                          Genre : Rock alternatiffolk-popchamber rock<br>
                          Duration : 60:38<br>
                          Label : Republic<br>
                          Producer : Aaron DessnerTaylor SwiftJack AntonoffBryce Dessner</p>

                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>17 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>
                    
                    <a class="linkalbum" target="_blank" href="https://open.spotify.com/album/151w1FgRZfnKZA9FEcg9Z3?si=PrN2nkwNQWyJ7Ig6prWDFQ&nd=1">
                    <div class="bungkusgambar">
                      <img class="gambaralbum" src="./image/tsmidnight1.jpg" alt="Tunggu Sebentar Yaaa~">
                      <p class="judulalbum">Midnight</p>
                    </div>
                    <div class="deskripsialbum">
                      <p>Midnights was the tenth studio album by American songwriter Taylor swift, 
                          released on October 21, 2022, through republic records. Announced at the MTV 
                          music video awards 2022, this album is the first swift act since her 2020 album, 
                          folklore and evermore. Midnights is a concept album of nocturnal contemplation, 
                          written and produced by swift with jack antonoff as his main collaborator. After 
                          a limited promotion for her previous studio albums, swift turned to his traditional 
                          roll-out album for the midnights. He published his set list through a tiktok series 
                          titled midnights mayhem with me from September 21 to October 7, 2022, revealing the 
                          appearance of Lana del rey in the fourth song, "snow on the beach ". Seven bonus songs 
                          were released on October 21, followed by music videos for "anti-hero" and "bejeweled ", 
                          the first one mentioned as the top single of the album, and number one swift in billboard hot 100.</p>
                      <p>Album studio by Taylor Swift<br>
                          Released : 21 October 2022<br>
                          Studio : Audu (Brooklyn)<br>
                          Big Mercy (Brooklyn)<br>
                          Blue Plate (Haworth, New Jersey)<br>
                          Electric Lady (New York City)<br>
                          Hutchinson Sound (Brooklyn)<br>
                          Henson (Los Angeles)<br>
                          Keanu Beats (Melbourne)<br>
                          Moultrie (Brooklyn)<br>
                          Neon Wave (Pirmasens)<br>
                          Pleasure Hill (Portland, Maine)<br>
                          Rough Customer (Brooklyn)<br>
                          Sound House (Lakeland, Florida)<br>
                          Sound of Waves (Los Angeles)<br>
                          Sweet Spot (Los Angeles)[1]<br>
                          Genre : Elektronikachill-outsynth-popdream pop<br>
                          Duration : 44:02<br>
                          Label : Republic<br>
                          Producer : Taylor SwiftJack AntonoffKeanu BeatsSounwaveJahaan Sweet</p>

                    </div>
                    <div class="bungkus-deskripsi">
                      <h4>13 songs</h4>
                      <h4>Album single</h4>
                    </div>
                  </a>
                    

                </div>
              </div>
              
              <style>
    .inner {
        padding: 20px;
        background-color: #e6e6fa;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        font-weight: bold;
    }

    input.form-control {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .btn-primary {
        display: inline-block;
        padding: 8px 12px;
        margin-top: 10px;
        font-size: 14px;
        font-weight: bold;
        color: #fff;
        background-color: #007bff;
        border: 1px solid #007bff;
        border-radius: 5px;
        cursor: pointer;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
</style>

                <div class="inner">
                    <div class="row">
                        <div class="col-md-3">
                            <h3>
                                Tambahkan Album</h3>
                            <form action="TambahAlbumServlet" method="post">
                                <div class="form-group">
                                    <label>Judul Album</label>
                                    <input class="form-control" name="judul" place-holder="Masukkan judul album" required>
                                </div>
                                <div class="form-group">
                                    <label>Deskripsi Album</label>
                                    <input class="form-control" name="deskripsi" place-holder="Masukkan deskripsi album" required>
                                </div>
                                <div class="form-group">
                                    <label>Tahun Rilis</label>
                                    <input class="form-control" name="tahun" place-holder="Masukan tahun rilis album" required>
                                </div>
                                <div class="form-group">
                                    <label>Link Album</label>
                                    <input class="form-control" name="link" place-holder="Masukan link album" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <button type="reset" class="btn btn-primary">Reset</button>
                            </form>
                            
                        </div>
                        
<table class="table">
        <thead class="bg-light">
        </thead>
        <tbody>
            <c:forEach var="album" items="${albumList}">
                <tr>
                    <td>${album.judulalbum}</td>
                    <td>${album.deskripsialbum}</td>
                    <td>${album.tahunrilis}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

                    </div>
                </div>    

            </section>

          </main>

          <!-- MAIN SCRIPT -->
          <script src="./javastring/main.js"></script>

          <!-- INI SCRIPT BUAT SLICK CAROUSSEL NYA BIAR AKTIF -->
          <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    </body>
</html>
