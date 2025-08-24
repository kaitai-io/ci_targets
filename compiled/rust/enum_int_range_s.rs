// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct EnumIntRangeS {
    pub _root: SharedType<EnumIntRangeS>,
    pub _parent: SharedType<EnumIntRangeS>,
    pub _self: SharedType<Self>,
    f1: RefCell<EnumIntRangeS_Constants>,
    f2: RefCell<EnumIntRangeS_Constants>,
    f3: RefCell<EnumIntRangeS_Constants>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumIntRangeS {
    type Root = EnumIntRangeS;
    type Parent = EnumIntRangeS;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.f1.borrow_mut() = (_io.read_s4be()? as i64).try_into()?;
        *self_rc.f2.borrow_mut() = (_io.read_s4be()? as i64).try_into()?;
        *self_rc.f3.borrow_mut() = (_io.read_s4be()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumIntRangeS {
}
impl EnumIntRangeS {
    pub fn f1(&self) -> Ref<'_, EnumIntRangeS_Constants> {
        self.f1.borrow()
    }
}
impl EnumIntRangeS {
    pub fn f2(&self) -> Ref<'_, EnumIntRangeS_Constants> {
        self.f2.borrow()
    }
}
impl EnumIntRangeS {
    pub fn f3(&self) -> Ref<'_, EnumIntRangeS_Constants> {
        self.f3.borrow()
    }
}
impl EnumIntRangeS {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumIntRangeS_Constants {
    IntMin,
    Zero,
    IntMax,
    Unknown(i64),
}

impl TryFrom<i64> for EnumIntRangeS_Constants {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumIntRangeS_Constants> {
        match flag {
            -2147483648 => Ok(EnumIntRangeS_Constants::IntMin),
            0 => Ok(EnumIntRangeS_Constants::Zero),
            2147483647 => Ok(EnumIntRangeS_Constants::IntMax),
            _ => Ok(EnumIntRangeS_Constants::Unknown(flag)),
        }
    }
}

impl From<&EnumIntRangeS_Constants> for i64 {
    fn from(v: &EnumIntRangeS_Constants) -> Self {
        match *v {
            EnumIntRangeS_Constants::IntMin => -2147483648,
            EnumIntRangeS_Constants::Zero => 0,
            EnumIntRangeS_Constants::IntMax => 2147483647,
            EnumIntRangeS_Constants::Unknown(v) => v
        }
    }
}

impl Default for EnumIntRangeS_Constants {
    fn default() -> Self { EnumIntRangeS_Constants::Unknown(0) }
}

