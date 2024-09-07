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
pub struct DefaultBitEndianMod {
    pub _root: SharedType<DefaultBitEndianMod>,
    pub _parent: SharedType<DefaultBitEndianMod>,
    pub _self: SharedType<Self>,
    main: RefCell<OptRc<DefaultBitEndianMod_MainObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultBitEndianMod {
    type Root = DefaultBitEndianMod;
    type Parent = DefaultBitEndianMod;

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
        let t = Self::read_into::<_, DefaultBitEndianMod_MainObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.main.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultBitEndianMod {
}
impl DefaultBitEndianMod {
    pub fn main(&self) -> Ref<OptRc<DefaultBitEndianMod_MainObj>> {
        self.main.borrow()
    }
}
impl DefaultBitEndianMod {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultBitEndianMod_MainObj {
    pub _root: SharedType<DefaultBitEndianMod>,
    pub _parent: SharedType<DefaultBitEndianMod>,
    pub _self: SharedType<Self>,
    one: RefCell<u64>,
    two: RefCell<u64>,
    nest: RefCell<OptRc<DefaultBitEndianMod_MainObj_Subnest>>,
    nest_be: RefCell<OptRc<DefaultBitEndianMod_MainObj_SubnestBe>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultBitEndianMod_MainObj {
    type Root = DefaultBitEndianMod;
    type Parent = DefaultBitEndianMod;

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
        *self_rc.one.borrow_mut() = _io.read_bits_int_le(9)?;
        *self_rc.two.borrow_mut() = _io.read_bits_int_le(15)?;
        _io.align_to_byte()?;
        let t = Self::read_into::<_, DefaultBitEndianMod_MainObj_Subnest>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.nest.borrow_mut() = t;
        let t = Self::read_into::<_, DefaultBitEndianMod_MainObj_SubnestBe>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.nest_be.borrow_mut() = t;
        Ok(())
    }
}
impl DefaultBitEndianMod_MainObj {
}
impl DefaultBitEndianMod_MainObj {
    pub fn one(&self) -> Ref<u64> {
        self.one.borrow()
    }
}
impl DefaultBitEndianMod_MainObj {
    pub fn two(&self) -> Ref<u64> {
        self.two.borrow()
    }
}
impl DefaultBitEndianMod_MainObj {
    pub fn nest(&self) -> Ref<OptRc<DefaultBitEndianMod_MainObj_Subnest>> {
        self.nest.borrow()
    }
}
impl DefaultBitEndianMod_MainObj {
    pub fn nest_be(&self) -> Ref<OptRc<DefaultBitEndianMod_MainObj_SubnestBe>> {
        self.nest_be.borrow()
    }
}
impl DefaultBitEndianMod_MainObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultBitEndianMod_MainObj_Subnest {
    pub _root: SharedType<DefaultBitEndianMod>,
    pub _parent: SharedType<DefaultBitEndianMod_MainObj>,
    pub _self: SharedType<Self>,
    two: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultBitEndianMod_MainObj_Subnest {
    type Root = DefaultBitEndianMod;
    type Parent = DefaultBitEndianMod_MainObj;

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
        *self_rc.two.borrow_mut() = _io.read_bits_int_le(16)?;
        Ok(())
    }
}
impl DefaultBitEndianMod_MainObj_Subnest {
}
impl DefaultBitEndianMod_MainObj_Subnest {
    pub fn two(&self) -> Ref<u64> {
        self.two.borrow()
    }
}
impl DefaultBitEndianMod_MainObj_Subnest {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DefaultBitEndianMod_MainObj_SubnestBe {
    pub _root: SharedType<DefaultBitEndianMod>,
    pub _parent: SharedType<DefaultBitEndianMod_MainObj>,
    pub _self: SharedType<Self>,
    two: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DefaultBitEndianMod_MainObj_SubnestBe {
    type Root = DefaultBitEndianMod;
    type Parent = DefaultBitEndianMod_MainObj;

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
        *self_rc.two.borrow_mut() = _io.read_bits_int_be(16)?;
        Ok(())
    }
}
impl DefaultBitEndianMod_MainObj_SubnestBe {
}
impl DefaultBitEndianMod_MainObj_SubnestBe {
    pub fn two(&self) -> Ref<u64> {
        self.two.borrow()
    }
}
impl DefaultBitEndianMod_MainObj_SubnestBe {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
