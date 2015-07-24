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
    var showBoobs: Bool
    var isBigBoobs: Bool
    
    init(showBoobs: Bool, isBigBoobs: Bool, gender: String)
    {
        self.showBoobs = showBoobs
        self.isBigBoobs = isBigBoobs
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
    
    public var IsBigBoobs: Bool
        {
        get
        {
            return self.isBigBoobs
        }
        set(newValue)
        {
            self.isBigBoobs = newValue
        }
    }
    
    public func TakePhoto()
    {
        if(self.ShowBoobs)
        {
            self.IsFamous = true
        }
        
        if(self.Gender == "male")
        {
            if(self.IsFamous)
            {
                likeCount = 500 - barzoCount
            }
            else
            {
                likeCount = 12
            }
        }
        else if(self.Gender == "female")
        {
            if(self.IsFamous)
            {
                if(self.IsBigBoobs)
                {
                    likeCount = 5000
                }
                else
                {
                    likeCount = 1500
                }
            }
            else
            {
                likeCount = 100
            }
            
            while barzoCount < 200 && ShowBoobs
            {
                self.barzoCount--
                likeCount++
                println("Memintolar da tombikoymuş :))))")
            }
        }
    }
}

var Kate = Selfie(showBoobs: true, isBigBoobs: true, gender: "female")
Kate.TakePhoto()
