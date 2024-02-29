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
pub struct CombineStr {
    pub strTerm: String,
    pub strLimit: String,
    pub strEos: String,
    pub termOrEos: Option<String>,
    pub eosOrCalcBytes: Option<String>,
    pub limitOrCalc: Option<String>,
    pub strCalcBytes: Option<String>,
    pub limitOrCalcBytes: Option<String>,
    pub eosOrCalc: Option<String>,
    pub limitOrEos: Option<String>,
    pub strCalc: Option<String>,
    pub calcBytes: Option<Vec<u8>>,
    pub termOrCalcBytes: Option<String>,
    pub termOrLimit: Option<String>,
    pub termOrCalc: Option<String>,
    pub calcOrCalcBytes: Option<String>,
}

impl KaitaiStruct for CombineStr {
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
        self.strTerm = String::from_utf8_lossy(self.stream.read_bytes_term(124, false, true, true)?);
        self.strLimit = String::from_utf8_lossy(self.stream.read_bytes(4)?);
        self.strEos = String::from_utf8_lossy(self.stream.read_bytes_full()?);
    }
}

impl CombineStr {
    fn termOrEos(&mut self) -> String {
        if let Some(x) = self.termOrEos {
            return x;
        }

        self.termOrEos = if false { self.str_term } else { self.str_eos};
        return self.termOrEos;
    }
    fn eosOrCalcBytes(&mut self) -> String {
        if let Some(x) = self.eosOrCalcBytes {
            return x;
        }

        self.eosOrCalcBytes = if true { self.str_eos } else { self.str_calc_bytes};
        return self.eosOrCalcBytes;
    }
    fn limitOrCalc(&mut self) -> String {
        if let Some(x) = self.limitOrCalc {
            return x;
        }

        self.limitOrCalc = if false { self.str_limit } else { self.str_calc};
        return self.limitOrCalc;
    }
    fn strCalcBytes(&mut self) -> String {
        if let Some(x) = self.strCalcBytes {
            return x;
        }

        self.strCalcBytes = String::from_utf8_lossy(self.calc_bytes);
        return self.strCalcBytes;
    }
    fn limitOrCalcBytes(&mut self) -> String {
        if let Some(x) = self.limitOrCalcBytes {
            return x;
        }

        self.limitOrCalcBytes = if true { self.str_limit } else { self.str_calc_bytes};
        return self.limitOrCalcBytes;
    }
    fn eosOrCalc(&mut self) -> String {
        if let Some(x) = self.eosOrCalc {
            return x;
        }

        self.eosOrCalc = if false { self.str_eos } else { self.str_calc};
        return self.eosOrCalc;
    }
    fn limitOrEos(&mut self) -> String {
        if let Some(x) = self.limitOrEos {
            return x;
        }

        self.limitOrEos = if true { self.str_limit } else { self.str_eos};
        return self.limitOrEos;
    }
    fn strCalc(&mut self) -> String {
        if let Some(x) = self.strCalc {
            return x;
        }

        self.strCalc = "bar";
        return self.strCalc;
    }
    fn calcBytes(&mut self) -> Vec<u8> {
        if let Some(x) = self.calcBytes {
            return x;
        }

        self.calcBytes = vec!([0x62, 0x61, 0x7a]);
        return self.calcBytes;
    }
    fn termOrCalcBytes(&mut self) -> String {
        if let Some(x) = self.termOrCalcBytes {
            return x;
        }

        self.termOrCalcBytes = if false { self.str_term } else { self.str_calc_bytes};
        return self.termOrCalcBytes;
    }
    fn termOrLimit(&mut self) -> String {
        if let Some(x) = self.termOrLimit {
            return x;
        }

        self.termOrLimit = if true { self.str_term } else { self.str_limit};
        return self.termOrLimit;
    }
    fn termOrCalc(&mut self) -> String {
        if let Some(x) = self.termOrCalc {
            return x;
        }

        self.termOrCalc = if true { self.str_term } else { self.str_calc};
        return self.termOrCalc;
    }
    fn calcOrCalcBytes(&mut self) -> String {
        if let Some(x) = self.calcOrCalcBytes {
            return x;
        }

        self.calcOrCalcBytes = if false { self.str_calc } else { self.str_calc_bytes};
        return self.calcOrCalcBytes;
    }
}
