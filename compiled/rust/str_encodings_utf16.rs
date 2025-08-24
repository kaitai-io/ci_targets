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
pub struct StrEncodingsUtf16 {
    pub _root: SharedType<StrEncodingsUtf16>,
    pub _parent: SharedType<StrEncodingsUtf16>,
    pub _self: SharedType<Self>,
    len_be: RefCell<u32>,
    be_bom_removed: RefCell<OptRc<StrEncodingsUtf16_StrBeBomRemoved>>,
    len_le: RefCell<u32>,
    le_bom_removed: RefCell<OptRc<StrEncodingsUtf16_StrLeBomRemoved>>,
    _io: RefCell<BytesReader>,
    be_bom_removed_raw: RefCell<Vec<u8>>,
    le_bom_removed_raw: RefCell<Vec<u8>>,
}
impl KStruct for StrEncodingsUtf16 {
    type Root = StrEncodingsUtf16;
    type Parent = StrEncodingsUtf16;

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
        *self_rc.len_be.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.be_bom_removed_raw.borrow_mut() = _io.read_bytes(*self_rc.len_be() as usize)?.into();
        let be_bom_removed_raw = self_rc.be_bom_removed_raw.borrow();
        let _t_be_bom_removed_raw_io = BytesReader::from(be_bom_removed_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsUtf16_StrBeBomRemoved>(&_t_be_bom_removed_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.be_bom_removed.borrow_mut() = t;
        *self_rc.len_le.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.le_bom_removed_raw.borrow_mut() = _io.read_bytes(*self_rc.len_le() as usize)?.into();
        let le_bom_removed_raw = self_rc.le_bom_removed_raw.borrow();
        let _t_le_bom_removed_raw_io = BytesReader::from(le_bom_removed_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsUtf16_StrLeBomRemoved>(&_t_le_bom_removed_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.le_bom_removed.borrow_mut() = t;
        Ok(())
    }
}
impl StrEncodingsUtf16 {
}
impl StrEncodingsUtf16 {
    pub fn len_be(&self) -> Ref<'_, u32> {
        self.len_be.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn be_bom_removed(&self) -> Ref<'_, OptRc<StrEncodingsUtf16_StrBeBomRemoved>> {
        self.be_bom_removed.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn len_le(&self) -> Ref<'_, u32> {
        self.len_le.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn le_bom_removed(&self) -> Ref<'_, OptRc<StrEncodingsUtf16_StrLeBomRemoved>> {
        self.le_bom_removed.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn be_bom_removed_raw(&self) -> Ref<'_, Vec<u8>> {
        self.be_bom_removed_raw.borrow()
    }
}
impl StrEncodingsUtf16 {
    pub fn le_bom_removed_raw(&self) -> Ref<'_, Vec<u8>> {
        self.le_bom_removed_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsUtf16_StrBeBomRemoved {
    pub _root: SharedType<StrEncodingsUtf16>,
    pub _parent: SharedType<StrEncodingsUtf16>,
    pub _self: SharedType<Self>,
    bom: RefCell<u16>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEncodingsUtf16_StrBeBomRemoved {
    type Root = StrEncodingsUtf16;
    type Parent = StrEncodingsUtf16;

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
        *self_rc.bom.borrow_mut() = _io.read_u2be()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "UTF-16BE")?;
        Ok(())
    }
}
impl StrEncodingsUtf16_StrBeBomRemoved {
}
impl StrEncodingsUtf16_StrBeBomRemoved {
    pub fn bom(&self) -> Ref<'_, u16> {
        self.bom.borrow()
    }
}
impl StrEncodingsUtf16_StrBeBomRemoved {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl StrEncodingsUtf16_StrBeBomRemoved {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsUtf16_StrLeBomRemoved {
    pub _root: SharedType<StrEncodingsUtf16>,
    pub _parent: SharedType<StrEncodingsUtf16>,
    pub _self: SharedType<Self>,
    bom: RefCell<u16>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEncodingsUtf16_StrLeBomRemoved {
    type Root = StrEncodingsUtf16;
    type Parent = StrEncodingsUtf16;

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
        *self_rc.bom.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "UTF-16LE")?;
        Ok(())
    }
}
impl StrEncodingsUtf16_StrLeBomRemoved {
}
impl StrEncodingsUtf16_StrLeBomRemoved {
    pub fn bom(&self) -> Ref<'_, u16> {
        self.bom.borrow()
    }
}
impl StrEncodingsUtf16_StrLeBomRemoved {
    pub fn str(&self) -> Ref<'_, String> {
        self.str.borrow()
    }
}
impl StrEncodingsUtf16_StrLeBomRemoved {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
