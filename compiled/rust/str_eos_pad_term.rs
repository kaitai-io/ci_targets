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
pub struct StrEosPadTerm {
    pub _root: SharedType<StrEosPadTerm>,
    pub _parent: SharedType<StrEosPadTerm>,
    pub _self: SharedType<Self>,
    str_pad: RefCell<OptRc<StrEosPadTerm_StrPadType>>,
    str_term: RefCell<OptRc<StrEosPadTerm_StrTermType>>,
    str_term_and_pad: RefCell<OptRc<StrEosPadTerm_StrTermAndPadType>>,
    str_term_include: RefCell<OptRc<StrEosPadTerm_StrTermIncludeType>>,
    _io: RefCell<BytesReader>,
    str_pad_raw: RefCell<Vec<u8>>,
    str_term_raw: RefCell<Vec<u8>>,
    str_term_and_pad_raw: RefCell<Vec<u8>>,
    str_term_include_raw: RefCell<Vec<u8>>,
}
impl KStruct for StrEosPadTerm {
    type Root = StrEosPadTerm;
    type Parent = StrEosPadTerm;

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
        *self_rc.str_pad_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_pad_raw = self_rc.str_pad_raw.borrow();
        let _t_str_pad_raw_io = BytesReader::from(str_pad_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTerm_StrPadType>(&_t_str_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_pad.borrow_mut() = t;
        *self_rc.str_term_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_raw = self_rc.str_term_raw.borrow();
        let _t_str_term_raw_io = BytesReader::from(str_term_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTerm_StrTermType>(&_t_str_term_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term.borrow_mut() = t;
        *self_rc.str_term_and_pad_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_and_pad_raw = self_rc.str_term_and_pad_raw.borrow();
        let _t_str_term_and_pad_raw_io = BytesReader::from(str_term_and_pad_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTerm_StrTermAndPadType>(&_t_str_term_and_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_and_pad.borrow_mut() = t;
        *self_rc.str_term_include_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_include_raw = self_rc.str_term_include_raw.borrow();
        let _t_str_term_include_raw_io = BytesReader::from(str_term_include_raw.clone());
        let t = Self::read_into::<BytesReader, StrEosPadTerm_StrTermIncludeType>(&_t_str_term_include_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_include.borrow_mut() = t;
        Ok(())
    }
}
impl StrEosPadTerm {
}
impl StrEosPadTerm {
    pub fn str_pad(&self) -> Ref<'_, OptRc<StrEosPadTerm_StrPadType>> {
        self.str_pad.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term(&self) -> Ref<'_, OptRc<StrEosPadTerm_StrTermType>> {
        self.str_term.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term_and_pad(&self) -> Ref<'_, OptRc<StrEosPadTerm_StrTermAndPadType>> {
        self.str_term_and_pad.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term_include(&self) -> Ref<'_, OptRc<StrEosPadTerm_StrTermIncludeType>> {
        self.str_term_include.borrow()
    }
}
impl StrEosPadTerm {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad_raw.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_raw.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term_and_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad_raw.borrow()
    }
}
impl StrEosPadTerm {
    pub fn str_term_include_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTerm_StrPadType {
    pub _root: SharedType<StrEosPadTerm>,
    pub _parent: SharedType<StrEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTerm_StrPadType {
    type Root = StrEosPadTerm;
    type Parent = StrEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_strip_right(&_io.read_bytes_full()?.into(), 64).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTerm_StrPadType {
}
impl StrEosPadTerm_StrPadType {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTerm_StrPadType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTerm_StrTermAndPadType {
    pub _root: SharedType<StrEosPadTerm>,
    pub _parent: SharedType<StrEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTerm_StrTermAndPadType {
    type Root = StrEosPadTerm;
    type Parent = StrEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 43).into(), 64, false).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTerm_StrTermAndPadType {
}
impl StrEosPadTerm_StrTermAndPadType {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTerm_StrTermAndPadType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTerm_StrTermIncludeType {
    pub _root: SharedType<StrEosPadTerm>,
    pub _parent: SharedType<StrEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTerm_StrTermIncludeType {
    type Root = StrEosPadTerm;
    type Parent = StrEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&_io.read_bytes_full()?.into(), 64, true).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTerm_StrTermIncludeType {
}
impl StrEosPadTerm_StrTermIncludeType {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTerm_StrTermIncludeType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEosPadTerm_StrTermType {
    pub _root: SharedType<StrEosPadTerm>,
    pub _parent: SharedType<StrEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for StrEosPadTerm_StrTermType {
    type Root = StrEosPadTerm;
    type Parent = StrEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_to_str(&bytes_terminate(&_io.read_bytes_full()?.into(), 64, false).into(), "UTF-8")?;
        Ok(())
    }
}
impl StrEosPadTerm_StrTermType {
}
impl StrEosPadTerm_StrTermType {
    pub fn value(&self) -> Ref<'_, String> {
        self.value.borrow()
    }
}
impl StrEosPadTerm_StrTermType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
