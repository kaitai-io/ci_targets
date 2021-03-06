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
pub struct Integers {
    pub magic1: Vec<u8>,
    pub uint8: u8,
    pub sint8: i8,
    pub magicUint: Vec<u8>,
    pub uint16: u16,
    pub uint32: u32,
    pub uint64: u64,
    pub magicSint: Vec<u8>,
    pub sint16: i16,
    pub sint32: i32,
    pub sint64: i64,
    pub magicUintLe: Vec<u8>,
    pub uint16le: u16,
    pub uint32le: u32,
    pub uint64le: u64,
    pub magicSintLe: Vec<u8>,
    pub sint16le: i16,
    pub sint32le: i32,
    pub sint64le: i64,
    pub magicUintBe: Vec<u8>,
    pub uint16be: u16,
    pub uint32be: u32,
    pub uint64be: u64,
    pub magicSintBe: Vec<u8>,
    pub sint16be: i16,
    pub sint32be: i32,
    pub sint64be: i64,
}

impl KaitaiStruct for Integers {
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
        self.magic1 = self.stream.read_bytes(6)?;
        self.uint8 = self.stream.read_u1()?;
        self.sint8 = self.stream.read_s1()?;
        self.magicUint = self.stream.read_bytes(10)?;
        self.uint16 = self.stream.read_u2le()?;
        self.uint32 = self.stream.read_u4le()?;
        self.uint64 = self.stream.read_u8le()?;
        self.magicSint = self.stream.read_bytes(10)?;
        self.sint16 = self.stream.read_s2le()?;
        self.sint32 = self.stream.read_s4le()?;
        self.sint64 = self.stream.read_s8le()?;
        self.magicUintLe = self.stream.read_bytes(9)?;
        self.uint16le = self.stream.read_u2le()?;
        self.uint32le = self.stream.read_u4le()?;
        self.uint64le = self.stream.read_u8le()?;
        self.magicSintLe = self.stream.read_bytes(9)?;
        self.sint16le = self.stream.read_s2le()?;
        self.sint32le = self.stream.read_s4le()?;
        self.sint64le = self.stream.read_s8le()?;
        self.magicUintBe = self.stream.read_bytes(9)?;
        self.uint16be = self.stream.read_u2be()?;
        self.uint32be = self.stream.read_u4be()?;
        self.uint64be = self.stream.read_u8be()?;
        self.magicSintBe = self.stream.read_bytes(9)?;
        self.sint16be = self.stream.read_s2be()?;
        self.sint32be = self.stream.read_s4be()?;
        self.sint64be = self.stream.read_s8be()?;
    }
}

impl Integers {
}
