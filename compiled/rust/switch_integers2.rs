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
pub struct SwitchIntegers2 {
    pub _root: SharedType<SwitchIntegers2>,
    pub _parent: SharedType<SwitchIntegers2>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    len: RefCell<Option<SwitchIntegers2_Len>>,
    ham: RefCell<Vec<u8>>,
    padding: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_len_mod_str: Cell<bool>,
    len_mod_str: RefCell<String>,
}
#[derive(Debug, Clone)]
pub enum SwitchIntegers2_Len {
    U1(u8),
    U2(u16),
    U4(u32),
    U8(u64),
}
impl From<u8> for SwitchIntegers2_Len {
    fn from(v: u8) -> Self {
        Self::U1(v)
    }
}
impl From<&SwitchIntegers2_Len> for u8 {
    fn from(e: &SwitchIntegers2_Len) -> Self {
        if let SwitchIntegers2_Len::U1(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers2_Len::U1 to u8, enum value {:?}", e)
    }
}
impl From<u16> for SwitchIntegers2_Len {
    fn from(v: u16) -> Self {
        Self::U2(v)
    }
}
impl From<&SwitchIntegers2_Len> for u16 {
    fn from(e: &SwitchIntegers2_Len) -> Self {
        if let SwitchIntegers2_Len::U2(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers2_Len::U2 to u16, enum value {:?}", e)
    }
}
impl From<u32> for SwitchIntegers2_Len {
    fn from(v: u32) -> Self {
        Self::U4(v)
    }
}
impl From<&SwitchIntegers2_Len> for u32 {
    fn from(e: &SwitchIntegers2_Len) -> Self {
        if let SwitchIntegers2_Len::U4(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers2_Len::U4 to u32, enum value {:?}", e)
    }
}
impl From<u64> for SwitchIntegers2_Len {
    fn from(v: u64) -> Self {
        Self::U8(v)
    }
}
impl From<&SwitchIntegers2_Len> for u64 {
    fn from(e: &SwitchIntegers2_Len) -> Self {
        if let SwitchIntegers2_Len::U8(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchIntegers2_Len::U8 to u64, enum value {:?}", e)
    }
}
impl From<&SwitchIntegers2_Len> for usize {
    fn from(e: &SwitchIntegers2_Len) -> Self {
        match e {
            SwitchIntegers2_Len::U1(v) => *v as usize,
            SwitchIntegers2_Len::U2(v) => *v as usize,
            SwitchIntegers2_Len::U4(v) => *v as usize,
            SwitchIntegers2_Len::U8(v) => *v as usize,
        }
    }
}

impl KStruct for SwitchIntegers2 {
    type Root = SwitchIntegers2;
    type Parent = SwitchIntegers2;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        match *self_rc.code() {
            1 => {
                *self_rc.len.borrow_mut() = Some(_io.read_u1()?.into());
            }
            2 => {
                *self_rc.len.borrow_mut() = Some(_io.read_u2le()?.into());
            }
            4 => {
                *self_rc.len.borrow_mut() = Some(_io.read_u4le()?.into());
            }
            8 => {
                *self_rc.len.borrow_mut() = Some(_io.read_u8le()?.into());
            }
            _ => {}
        }
        *self_rc.ham.borrow_mut() = _io.read_bytes(self_rc.len() as usize)?.into();
        if ((self_rc.len() as u64) > (3 as u64)) {
            *self_rc.padding.borrow_mut() = _io.read_u1()?.into();
        }
        Ok(())
    }
}
impl SwitchIntegers2 {
    pub fn len_mod_str(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_len_mod_str.get() {
            return Ok(self.len_mod_str.borrow());
        }
        self.f_len_mod_str.set(true);
        *self.len_mod_str.borrow_mut() = ((((self.len() as u64) * (2 as u64)) as i32) - (1 as i32)).to_string().to_string();
        Ok(self.len_mod_str.borrow())
    }
}
impl SwitchIntegers2 {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl SwitchIntegers2 {
    pub fn len(&self) -> usize {
        self.len.borrow().as_ref().unwrap().into()
    }
    pub fn len_enum(&self) -> Ref<Option<SwitchIntegers2_Len>> {
        self.len.borrow()
    }
}
impl SwitchIntegers2 {
    pub fn ham(&self) -> Ref<Vec<u8>> {
        self.ham.borrow()
    }
}
impl SwitchIntegers2 {
    pub fn padding(&self) -> Ref<u8> {
        self.padding.borrow()
    }
}
impl SwitchIntegers2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
