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
pub struct SwitchElseOnly {
    pub _root: SharedType<SwitchElseOnly>,
    pub _parent: SharedType<SwitchElseOnly>,
    pub _self: SharedType<Self>,
    opcode: RefCell<i8>,
    prim_byte: RefCell<Option<SwitchElseOnly_PrimByte>>,
    indicator: RefCell<Vec<u8>>,
    ut: RefCell<Option<SwitchElseOnly_Ut>>,
    _io: RefCell<BytesReader>,
}
#[derive(Debug, Clone)]
pub enum SwitchElseOnly_PrimByte {
    S1(i8),
}
impl From<i8> for SwitchElseOnly_PrimByte {
    fn from(v: i8) -> Self {
        Self::S1(v)
    }
}
impl From<&SwitchElseOnly_PrimByte> for i8 {
    fn from(e: &SwitchElseOnly_PrimByte) -> Self {
        if let SwitchElseOnly_PrimByte::S1(v) = e {
            return *v
        }
        panic!("trying to convert from enum SwitchElseOnly_PrimByte::S1 to i8, enum value {:?}", e)
    }
}
impl From<&SwitchElseOnly_PrimByte> for usize {
    fn from(e: &SwitchElseOnly_PrimByte) -> Self {
        match e {
            SwitchElseOnly_PrimByte::S1(v) => *v as usize,
        }
    }
}

#[derive(Debug, Clone)]
pub enum SwitchElseOnly_Ut {
    SwitchElseOnly_Data(OptRc<SwitchElseOnly_Data>),
}
impl From<&SwitchElseOnly_Ut> for OptRc<SwitchElseOnly_Data> {
    fn from(v: &SwitchElseOnly_Ut) -> Self {
        if let SwitchElseOnly_Ut::SwitchElseOnly_Data(x) = v {
            return x.clone();
        }
        panic!("expected SwitchElseOnly_Ut::SwitchElseOnly_Data, got {:?}", v)
    }
}
impl From<OptRc<SwitchElseOnly_Data>> for SwitchElseOnly_Ut {
    fn from(v: OptRc<SwitchElseOnly_Data>) -> Self {
        Self::SwitchElseOnly_Data(v)
    }
}
impl SwitchElseOnly_Ut {
    pub fn value(&self) -> Ref<Vec<u8>> {
        match self {
            SwitchElseOnly_Ut::SwitchElseOnly_Data(x) => x.value.borrow(),
        }
    }
}
impl KStruct for SwitchElseOnly {
    type Root = SwitchElseOnly;
    type Parent = SwitchElseOnly;

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
        *self_rc.opcode.borrow_mut() = _io.read_s1()?.into();
        *self_rc.prim_byte.borrow_mut() = Some(_io.read_s1()?.into());
        *self_rc.indicator.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let t = Self::read_into::<_, SwitchElseOnly_Data>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.ut.borrow_mut() = Some(t);
        Ok(())
    }
}
impl SwitchElseOnly {
}
impl SwitchElseOnly {
    pub fn opcode(&self) -> Ref<i8> {
        self.opcode.borrow()
    }
}
impl SwitchElseOnly {
    pub fn prim_byte(&self) -> usize {
        self.prim_byte.borrow().as_ref().unwrap().into()
    }
    pub fn prim_byte_enum(&self) -> Ref<Option<SwitchElseOnly_PrimByte>> {
        self.prim_byte.borrow()
    }
}
impl SwitchElseOnly {
    pub fn indicator(&self) -> Ref<Vec<u8>> {
        self.indicator.borrow()
    }
}
impl SwitchElseOnly {
    pub fn ut(&self) -> Ref<Option<SwitchElseOnly_Ut>> {
        self.ut.borrow()
    }
}
impl SwitchElseOnly {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct SwitchElseOnly_Data {
    pub _root: SharedType<SwitchElseOnly>,
    pub _parent: SharedType<SwitchElseOnly>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for SwitchElseOnly_Data {
    type Root = SwitchElseOnly;
    type Parent = SwitchElseOnly;

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
        *self_rc.value.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl SwitchElseOnly_Data {
}
impl SwitchElseOnly_Data {
    pub fn value(&self) -> Ref<Vec<u8>> {
        self.value.borrow()
    }
}
impl SwitchElseOnly_Data {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
