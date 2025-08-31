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
pub struct StrEosPadTermEqual {
    pub _root: SharedType<StrEosPadTermEqual>,
    pub _parent: SharedType<StrEosPadTermEqual>,
    pub _self: SharedType<Self>,
    s1: RefCell<OptRc<StrEosPadTermEqual_S1Type>>,
    s2: RefCell<OptRc<StrEosPadTermEqual_S2Type>>,
    s3: RefCell<OptRc<StrEosPadTermEqual_S3Type>>,
    s4: RefCell<OptRc<StrEosPadTermEqual_S4Type>>,
    _io: RefCell<BytesReader>,
    s1_raw: RefCell<Vec<u8>>,
    s2_raw: RefCell<Vec<u8>>,
    s3_raw: RefCell<Vec<u8>>,
    s4_raw: RefCell<Vec<u8>>,
}
impl KStruct for StrEosPadTermEqual {
    type Root = StrEosPadTermEqual;
    type Parent = StrEosPadTermEqual;

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
        *self_rc.s1_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let s1_raw = self_rc.s1_raw.borrow();
        let _t_s1_raw_io = BytesReader::from(s1_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTermEqual_S1Type>(&_t_s1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s1.borrow_mut() = t;
        *self_rc.s2_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let s2_raw = self_rc.s2_raw.borrow();
        let _t_s2_raw_io = BytesReader::from(s2_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTermEqual_S2Type>(&_t_s2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s2.borrow_mut() = t;
        *self_rc.s3_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let s3_raw = self_rc.s3_raw.borrow();
        let _t_s3_raw_io = BytesReader::from(s3_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTermEqual_S3Type>(&_t_s3_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s3.borrow_mut() = t;
        *self_rc.s4_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let s4_raw = self_rc.s4_raw.borrow();
        let _t_s4_raw_io = BytesReader::from(s4_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTermEqual_S4Type>(&_t_s4_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.s4.borrow_mut() = t;
        Ok(())
    }
}
impl StrEosPadTermEqual {
}
impl StrEosPadTermEqual {
    pub fn s1(&self) -> Ref<'_, OptRc<StrEosPadTermEqual_S1Type>> {
        self.s1.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s2(&self) -> Ref<'_, OptRc<StrEosPadTermEqual_S2Type>> {
        self.s2.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s3(&self) -> Ref<'_, OptRc<StrEosPadTermEqual_S3Type>> {
        self.s3.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s4(&self) -> Ref<'_, OptRc<StrEosPadTermEqual_S4Type>> {
        self.s4.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s1_raw.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s2_raw.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s3_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s3_raw.borrow()
    }
}
impl StrEosPadTermEqual {
    pub fn s4_raw(&self) -> Ref<'_, Vec<u8>> {
        self.s4_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTermEqual_S1Type {
    pub _root: SharedType<StrEosPadTermEqual>,
    pub _parent: SharedType<StrEosPadTermEqual>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTermEqual_S1Type {
    type Root = StrEosPadTermEqual;
    type Parent = StrEosPadTermEqual;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 64).into(), 64, false).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTermEqual_S1Type {
}
impl StrEosPadTermEqual_S1Type {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTermEqual_S1Type {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTermEqual_S2Type {
    pub _root: SharedType<StrEosPadTermEqual>,
    pub _parent: SharedType<StrEosPadTermEqual>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTermEqual_S2Type {
    type Root = StrEosPadTermEqual;
    type Parent = StrEosPadTermEqual;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 43).into(), 64, true).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTermEqual_S2Type {
}
impl StrEosPadTermEqual_S2Type {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTermEqual_S2Type {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTermEqual_S3Type {
    pub _root: SharedType<StrEosPadTermEqual>,
    pub _parent: SharedType<StrEosPadTermEqual>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTermEqual_S3Type {
    type Root = StrEosPadTermEqual;
    type Parent = StrEosPadTermEqual;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 43).into(), 43, false).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTermEqual_S3Type {
}
impl StrEosPadTermEqual_S3Type {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTermEqual_S3Type {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTermEqual_S4Type {
    pub _root: SharedType<StrEosPadTermEqual>,
    pub _parent: SharedType<StrEosPadTermEqual>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTermEqual_S4Type {
    type Root = StrEosPadTermEqual;
    type Parent = StrEosPadTermEqual;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 46).into(), 46, true).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTermEqual_S4Type {
}
impl StrEosPadTermEqual_S4Type {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTermEqual_S4Type {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
