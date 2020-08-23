// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;

#[derive(Default)]
pub struct IntegersDoubleOverflow {
    pub signedSafeMinBe: i64,
    pub signedSafeMinLe: i64,
    pub signedSafeMaxBe: i64,
    pub signedSafeMaxLe: i64,
    pub signedUnsafeNegBe: i64,
    pub signedUnsafeNegLe: i64,
    pub signedUnsafePosBe: i64,
    pub signedUnsafePosLe: i64,
    pub unsignedSafeMaxBe: Option<u64>,
    pub unsignedSafeMaxLe: Option<u64>,
    pub unsignedUnsafePosBe: Option<u64>,
    pub unsignedUnsafePosLe: Option<u64>,
}

impl KaitaiStruct for IntegersDoubleOverflow {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.signedSafeMinBe = self.stream.read_s8be()?;
        self.signedSafeMinLe = self.stream.read_s8le()?;
        self.signedSafeMaxBe = self.stream.read_s8be()?;
        self.signedSafeMaxLe = self.stream.read_s8le()?;
        self.signedUnsafeNegBe = self.stream.read_s8be()?;
        self.signedUnsafeNegLe = self.stream.read_s8le()?;
        self.signedUnsafePosBe = self.stream.read_s8be()?;
        self.signedUnsafePosLe = self.stream.read_s8le()?;
    }
}

impl IntegersDoubleOverflow {
    fn unsignedSafeMaxBe(&mut self) -> u64 {
        if let Some(x) = self.unsignedSafeMaxBe {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(16);
        self.unsignedSafeMaxBe = self.stream.read_u8be()?;
        self.stream.seek(_pos);
        return self.unsignedSafeMaxBe;
    }
    fn unsignedSafeMaxLe(&mut self) -> u64 {
        if let Some(x) = self.unsignedSafeMaxLe {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(24);
        self.unsignedSafeMaxLe = self.stream.read_u8le()?;
        self.stream.seek(_pos);
        return self.unsignedSafeMaxLe;
    }
    fn unsignedUnsafePosBe(&mut self) -> u64 {
        if let Some(x) = self.unsignedUnsafePosBe {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(48);
        self.unsignedUnsafePosBe = self.stream.read_u8be()?;
        self.stream.seek(_pos);
        return self.unsignedUnsafePosBe;
    }
    fn unsignedUnsafePosLe(&mut self) -> u64 {
        if let Some(x) = self.unsignedUnsafePosLe {
            return x;
        }

        let _pos = self.stream.pos();
        self.stream.seek(56);
        self.unsignedUnsafePosLe = self.stream.read_u8le()?;
        self.stream.seek(_pos);
        return self.unsignedUnsafePosLe;
    }
}
