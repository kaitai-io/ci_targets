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
pub struct IntegersMinMax {
    pub _root: SharedType<IntegersMinMax>,
    pub _parent: SharedType<IntegersMinMax>,
    pub _self: SharedType<Self>,
    unsigned_min: RefCell<OptRc<IntegersMinMax_Unsigned>>,
    unsigned_max: RefCell<OptRc<IntegersMinMax_Unsigned>>,
    signed_min: RefCell<OptRc<IntegersMinMax_Signed>>,
    signed_max: RefCell<OptRc<IntegersMinMax_Signed>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IntegersMinMax {
    type Root = IntegersMinMax;
    type Parent = IntegersMinMax;

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
        let t = Self::read_into::<_, IntegersMinMax_Unsigned>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.unsigned_min.borrow_mut() = t;
        let t = Self::read_into::<_, IntegersMinMax_Unsigned>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.unsigned_max.borrow_mut() = t;
        let t = Self::read_into::<_, IntegersMinMax_Signed>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.signed_min.borrow_mut() = t;
        let t = Self::read_into::<_, IntegersMinMax_Signed>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.signed_max.borrow_mut() = t;
        Ok(())
    }
}
impl IntegersMinMax {
}
impl IntegersMinMax {
    pub fn unsigned_min(&self) -> Ref<OptRc<IntegersMinMax_Unsigned>> {
        self.unsigned_min.borrow()
    }
}
impl IntegersMinMax {
    pub fn unsigned_max(&self) -> Ref<OptRc<IntegersMinMax_Unsigned>> {
        self.unsigned_max.borrow()
    }
}
impl IntegersMinMax {
    pub fn signed_min(&self) -> Ref<OptRc<IntegersMinMax_Signed>> {
        self.signed_min.borrow()
    }
}
impl IntegersMinMax {
    pub fn signed_max(&self) -> Ref<OptRc<IntegersMinMax_Signed>> {
        self.signed_max.borrow()
    }
}
impl IntegersMinMax {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IntegersMinMax_Signed {
    pub _root: SharedType<IntegersMinMax>,
    pub _parent: SharedType<IntegersMinMax>,
    pub _self: SharedType<Self>,
    s1: RefCell<i8>,
    s2le: RefCell<i16>,
    s4le: RefCell<i32>,
    s8le: RefCell<i64>,
    s2be: RefCell<i16>,
    s4be: RefCell<i32>,
    s8be: RefCell<i64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IntegersMinMax_Signed {
    type Root = IntegersMinMax;
    type Parent = IntegersMinMax;

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
        *self_rc.s1.borrow_mut() = _io.read_s1()?.into();
        *self_rc.s2le.borrow_mut() = _io.read_s2le()?.into();
        *self_rc.s4le.borrow_mut() = _io.read_s4le()?.into();
        *self_rc.s8le.borrow_mut() = _io.read_s8le()?.into();
        *self_rc.s2be.borrow_mut() = _io.read_s2be()?.into();
        *self_rc.s4be.borrow_mut() = _io.read_s4be()?.into();
        *self_rc.s8be.borrow_mut() = _io.read_s8be()?.into();
        Ok(())
    }
}
impl IntegersMinMax_Signed {
}
impl IntegersMinMax_Signed {
    pub fn s1(&self) -> Ref<i8> {
        self.s1.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s2le(&self) -> Ref<i16> {
        self.s2le.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s4le(&self) -> Ref<i32> {
        self.s4le.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s8le(&self) -> Ref<i64> {
        self.s8le.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s2be(&self) -> Ref<i16> {
        self.s2be.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s4be(&self) -> Ref<i32> {
        self.s4be.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn s8be(&self) -> Ref<i64> {
        self.s8be.borrow()
    }
}
impl IntegersMinMax_Signed {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IntegersMinMax_Unsigned {
    pub _root: SharedType<IntegersMinMax>,
    pub _parent: SharedType<IntegersMinMax>,
    pub _self: SharedType<Self>,
    u1: RefCell<u8>,
    u2le: RefCell<u16>,
    u4le: RefCell<u32>,
    u8le: RefCell<u64>,
    u2be: RefCell<u16>,
    u4be: RefCell<u32>,
    u8be: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IntegersMinMax_Unsigned {
    type Root = IntegersMinMax;
    type Parent = IntegersMinMax;

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
        *self_rc.u1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.u2le.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.u4le.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.u8le.borrow_mut() = _io.read_u8le()?.into();
        *self_rc.u2be.borrow_mut() = _io.read_u2be()?.into();
        *self_rc.u4be.borrow_mut() = _io.read_u4be()?.into();
        *self_rc.u8be.borrow_mut() = _io.read_u8be()?.into();
        Ok(())
    }
}
impl IntegersMinMax_Unsigned {
}
impl IntegersMinMax_Unsigned {
    pub fn u1(&self) -> Ref<u8> {
        self.u1.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u2le(&self) -> Ref<u16> {
        self.u2le.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u4le(&self) -> Ref<u32> {
        self.u4le.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u8le(&self) -> Ref<u64> {
        self.u8le.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u2be(&self) -> Ref<u16> {
        self.u2be.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u4be(&self) -> Ref<u32> {
        self.u4be.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn u8be(&self) -> Ref<u64> {
        self.u8be.borrow()
    }
}
impl IntegersMinMax_Unsigned {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
