sub Main()
    audioPlayer = CreateObject("roAudioPlayer")
    port = CreateObject("roMessagePort")
    audioPlayer.SetMessagePort(port)
    song = CreateObject("roAssociativeArray")
    song.url = "assets/audio.mp3"
    audioplayer.addcontent(song)
    audioplayer.setloop(false)
    audioPlayer.play()
    print "in showChannelSGScreen"
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)

    scene = screen.CreateScene("HelloWorld")
    screen.show()

    while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub

