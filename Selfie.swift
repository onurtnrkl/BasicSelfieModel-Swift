//
//  Selfie.swift
//
//
//  Created by Onur Tanrıkulu on 23/07/15.
//
//

public class Instagram
{
    var barzoCount = 85
    var gender: String
    var isFamous: Bool
    var likeCount: Int
    
    init(gender: String)
    {
        self.gender = gender
        self.isFamous = false
        self.likeCount = 1
    }
    
    public var Gender: String
        {
        get
        {
            return self.gender
        }
        set(newValue)
        {
            self.gender = newValue
        }
    }
    
    public var IsFamous: Bool
        {
        get
        {
            return self.isFamous
        }
        set(newValue)
        {
            self.isFamous = newValue
        }
    }
    
}

public class Selfie: Instagram
{
    var showBoobs = false
    
    override init(gender: String)
    {
        super.init(gender: gender)
    }
    
    public var ShowBoobs: Bool
        {
        get
        {
            return self.showBoobs
        }
        set(newValue)
        {
            self.showBoobs = newValue
        }
    }
    
    public func TakePhoto(showBoobs: Bool)
    {
        if(showBoobs)
        {
            self.IsFamous = true
        }
        
        if(self.Gender == "male")
        {
            if(self.IsFamous)
            {
                likeCount = 11
            }
            else
            {
                likeCount = 500 - barzoCount
            }
        }
        else if(self.Gender == "female")
        {
            if(self.IsFamous)
            {
                likeCount = 1500
            }
            else
            {
                likeCount = 100
            }
        }
        
        while barzoCount < 200 && ShowBoobs
        {
            self.barzoCount--
            likeCount++
            println("Memintolar da tombikoymuş :))))")
        }
    }
}

var Mahmut = Selfie(gender: "male")
Mahmut.TakePhoto(false)