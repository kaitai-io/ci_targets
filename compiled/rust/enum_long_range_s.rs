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
pub struct EnumLongRangeS {
    pub _root: SharedType<EnumLongRangeS>,
    pub _parent: SharedType<EnumLongRangeS>,
    pub _self: SharedType<Self>,
    f1: RefCell<EnumLongRangeS_Constants>,
    f2: RefCell<EnumLongRangeS_Constants>,
    f3: RefCell<EnumLongRangeS_Constants>,
    f4: RefCell<EnumLongRangeS_Constants>,
    f5: RefCell<EnumLongRangeS_Constants>,
    f6: RefCell<EnumLongRangeS_Constants>,
    f7: RefCell<EnumLongRangeS_Constants>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumLongRangeS {
    type Root = EnumLongRangeS;
    type Parent = EnumLongRangeS;

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
        *self_rc.f1.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f2.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f3.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f4.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f5.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f6.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        *self_rc.f7.borrow_mut() = (_io.read_s8be()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumLongRangeS {
}
impl EnumLongRangeS {
    pub fn f1(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f1.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f2(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f2.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f3(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f3.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f4(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f4.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f5(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f5.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f6(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f6.borrow()
    }
}
impl EnumLongRangeS {
    pub fn f7(&self) -> Ref<'_, EnumLongRangeS_Constants> {
        self.f7.borrow()
    }
}
impl EnumLongRangeS {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumLongRangeS_Constants {
    LongMin,
    IntBelowMin,
    IntMin,
    Zero,
    IntMax,
    IntOverMax,
    LongMax,
    Unknown(i64),
}

impl TryFrom<i64> for EnumLongRangeS_Constants {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumLongRangeS_Constants> {
        match flag {
            -9223372036854775808 => Ok(EnumLongRangeS_Constants::LongMin),
            -2147483649 => Ok(EnumLongRangeS_Constants::IntBelowMin),
            -2147483648 => Ok(EnumLongRangeS_Constants::IntMin),
            0 => Ok(EnumLongRangeS_Constants::Zero),
            2147483647 => Ok(EnumLongRangeS_Constants::IntMax),
            2147483648 => Ok(EnumLongRangeS_Constants::IntOverMax),
            9223372036854775807 => Ok(EnumLongRangeS_Constants::LongMax),
            _ => Ok(EnumLongRangeS_Constants::Unknown(flag)),
        }
    }
}

impl From<&EnumLongRangeS_Constants> for i64 {
    fn from(v: &EnumLongRangeS_Constants) -> Self {
        match *v {
            EnumLongRangeS_Constants::LongMin => -9223372036854775808,
            EnumLongRangeS_Constants::IntBelowMin => -2147483649,
            EnumLongRangeS_Constants::IntMin => -2147483648,
            EnumLongRangeS_Constants::Zero => 0,
            EnumLongRangeS_Constants::IntMax => 2147483647,
            EnumLongRangeS_Constants::IntOverMax => 2147483648,
            EnumLongRangeS_Constants::LongMax => 9223372036854775807,
            EnumLongRangeS_Constants::Unknown(v) => v
        }
    }
}

impl Default for EnumLongRangeS_Constants {
    fn default() -> Self { EnumLongRangeS_Constants::Unknown(0) }
}

