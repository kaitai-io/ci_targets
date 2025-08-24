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
pub struct EnumLongRangeU {
    pub _root: SharedType<EnumLongRangeU>,
    pub _parent: SharedType<EnumLongRangeU>,
    pub _self: SharedType<Self>,
    f1: RefCell<EnumLongRangeU_Constants>,
    f2: RefCell<EnumLongRangeU_Constants>,
    f3: RefCell<EnumLongRangeU_Constants>,
    f4: RefCell<EnumLongRangeU_Constants>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumLongRangeU {
    type Root = EnumLongRangeU;
    type Parent = EnumLongRangeU;

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
        *self_rc.f1.borrow_mut() = (_io.read_u8be()? as i64).try_into()?;
        *self_rc.f2.borrow_mut() = (_io.read_u8be()? as i64).try_into()?;
        *self_rc.f3.borrow_mut() = (_io.read_u8be()? as i64).try_into()?;
        *self_rc.f4.borrow_mut() = (_io.read_u8be()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumLongRangeU {
}
impl EnumLongRangeU {
    pub fn f1(&self) -> Ref<'_, EnumLongRangeU_Constants> {
        self.f1.borrow()
    }
}
impl EnumLongRangeU {
    pub fn f2(&self) -> Ref<'_, EnumLongRangeU_Constants> {
        self.f2.borrow()
    }
}
impl EnumLongRangeU {
    pub fn f3(&self) -> Ref<'_, EnumLongRangeU_Constants> {
        self.f3.borrow()
    }
}
impl EnumLongRangeU {
    pub fn f4(&self) -> Ref<'_, EnumLongRangeU_Constants> {
        self.f4.borrow()
    }
}
impl EnumLongRangeU {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumLongRangeU_Constants {
    Zero,
    IntMax,
    IntOverMax,
    LongMax,
    Unknown(i64),
}

impl TryFrom<i64> for EnumLongRangeU_Constants {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumLongRangeU_Constants> {
        match flag {
            0 => Ok(EnumLongRangeU_Constants::Zero),
            4294967295 => Ok(EnumLongRangeU_Constants::IntMax),
            4294967296 => Ok(EnumLongRangeU_Constants::IntOverMax),
            9223372036854775807 => Ok(EnumLongRangeU_Constants::LongMax),
            _ => Ok(EnumLongRangeU_Constants::Unknown(flag)),
        }
    }
}

impl From<&EnumLongRangeU_Constants> for i64 {
    fn from(v: &EnumLongRangeU_Constants) -> Self {
        match *v {
            EnumLongRangeU_Constants::Zero => 0,
            EnumLongRangeU_Constants::IntMax => 4294967295,
            EnumLongRangeU_Constants::IntOverMax => 4294967296,
            EnumLongRangeU_Constants::LongMax => 9223372036854775807,
            EnumLongRangeU_Constants::Unknown(v) => v
        }
    }
}

impl Default for EnumLongRangeU_Constants {
    fn default() -> Self { EnumLongRangeU_Constants::Unknown(0) }
}

