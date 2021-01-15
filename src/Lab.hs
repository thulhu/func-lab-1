--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Getting started                                                       --
-- Programmed by Codethulu :)                                                 --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------

import Hatch

--------------------------------------------------------------------------------
animation t =
            offset 350 (-200) (pentagram t)
            <@> offset 350 (-200) (gale t)
            <@> offset (-350) (-200) (matt t)
            <@> offset 350 (-200) (galef t)
            <@> offset (-350) (-200) (mattf t)
            <@> offset 0 0 (text1 t)
            <@> offset 0 0 (environment t)
--------------------------------------------------------------------------------
pentagram t 
        | t < 349 = offset (-350) (200) (scale 10 pentagram1)
        | t < 750= offset (-350) (200) (scale 10 pentagram2)
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
gale t 
        | t < 349 = offset 100 (-60) (scale 10 gale1)
        | t < 750 = offset (-300) 0 (scale 20 godimg)
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
galef t 
        | t < 120 = offset 100 (-60) (scale 10 galeface)
        | t < 250 = offset (100 + (250- 4 * t)) (-60) (scale 10 galeface )
        | t < 349 = offset (100) (-40) (scale 9 (mirror mattface))
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
matt t  
        | t < 349 = offset (-100) (-60) (scale 10 matt1)
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
mattf t  
        | t < 120 = offset (-100) (-60) (scale 10 mattface)
        | t < 250 = offset (-100 - (250- 4 * t)) (-60) (scale 10 mattface)
        | t < 349 = offset (-100) (-80) (scale 11 (mirror galeface))
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
environment t
        | t < 345 = offset 1000 1000 (text "")
        | t < 350 = offset (0) (0) (scale 50 white1)
        | otherwise = offset 1000 1000 (text "") --place holder for when i want nothing to appear, a little bit janky but ah well
text1 t  
        | t < 50 = offset (-500) (-40) (text "Hi Michael from CS141 - Functional Programming")
        | t < 100 = offset (-200) (-40) (text "Hi Matt from CS132 - Computer Organisation and Architecture")
        | t < 240 = offset 1000 1000 (text "")
        | t < 340 = offset 0 0 (text "We are ready to take our final form")
        | t < 430 = offset (-100) (80) (text "Join us, fresher")
        | t < 490 = offset (-100) (80) (text "Don't be scared, fresher")
        | t < 550 = offset (-100) (80) (text "This isn't a cult, it's just a module!")
        | t < 640 = offset (-100) (80) (text "Become one with the cs141 hivemind")
        | t < 750 = offset (-100) (80) (text "Take the module")
        | otherwise = offset 1000 1000 (text "Hi Mike from CS141 - Functional Programming")
--------------------------------------------------------------------------------