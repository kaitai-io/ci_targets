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
pub struct CombineBytes {
    pub bytesTerm: Vec<u8>,
    pub bytesLimit: Vec<u8>,
    pub bytesEos: Vec<u8>,
    pub bytesCalc: Option<Vec<u8>>,
    pub eosOrCalc: Option<Vec<u8>>,
    pub limitOrCalc: Option<Vec<u8>>,
    pub limitOrEos: Option<Vec<u8>>,
    pub termOrCalc: Option<Vec<u8>>,
    pub termOrEos: Option<Vec<u8>>,
    pub termOrLimit: Option<Vec<u8>>,
}

impl KaitaiStruct for CombineBytes {
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
        self.bytesTerm = self.stream.read_bytes_term(124, false, true, true)?;
        self.bytesLimit = self.stream.read_bytes(4)?;
        self.bytesEos = self.stream.read_bytes_full()?;
    }
}

impl CombineBytes {
    fn bytesCalc(&mut self) -> Vec<u8> {
        if let Some(x) = self.bytesCalc {
            return x;
        }

        self.bytesCalc = vec!([0x52, 0x6e, 0x44]);
        return self.bytesCalc;
    }
    fn eosOrCalc(&mut self) -> Vec<u8> {
        if let Some(x) = self.eosOrCalc {
            return x;
        }

        self.eosOrCalc = if true { self.bytes_eos } else { self.bytes_calc};
        return self.eosOrCalc;
    }
    fn limitOrCalc(&mut self) -> Vec<u8> {
        if let Some(x) = self.limitOrCalc {
            return x;
        }

        self.limitOrCalc = if false { self.bytes_limit } else { self.bytes_calc};
        return self.limitOrCalc;
    }
    fn limitOrEos(&mut self) -> Vec<u8> {
        if let Some(x) = self.limitOrEos {
            return x;
        }

        self.limitOrEos = if true { self.bytes_limit } else { self.bytes_eos};
        return self.limitOrEos;
    }
    fn termOrCalc(&mut self) -> Vec<u8> {
        if let Some(x) = self.termOrCalc {
            return x;
        }

        self.termOrCalc = if true { self.bytes_term } else { self.bytes_calc};
        return self.termOrCalc;
    }
    fn termOrEos(&mut self) -> Vec<u8> {
        if let Some(x) = self.termOrEos {
            return x;
        }

        self.termOrEos = if false { self.bytes_term } else { self.bytes_eos};
        return self.termOrEos;
    }
    fn termOrLimit(&mut self) -> Vec<u8> {
        if let Some(x) = self.termOrLimit {
            return x;
        }

        self.termOrLimit = if true { self.bytes_term } else { self.bytes_limit};
        return self.termOrLimit;
    }
}
