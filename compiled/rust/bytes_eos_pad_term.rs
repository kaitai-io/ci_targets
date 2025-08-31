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
pub struct BytesEosPadTerm {
    pub _root: SharedType<BytesEosPadTerm>,
    pub _parent: SharedType<BytesEosPadTerm>,
    pub _self: SharedType<Self>,
    str_pad: RefCell<OptRc<BytesEosPadTerm_StrPadType>>,
    str_term: RefCell<OptRc<BytesEosPadTerm_StrTermType>>,
    str_term_and_pad: RefCell<OptRc<BytesEosPadTerm_StrTermAndPadType>>,
    str_term_include: RefCell<OptRc<BytesEosPadTerm_StrTermIncludeType>>,
    _io: RefCell<BytesReader>,
    str_pad_raw: RefCell<Vec<u8>>,
    str_term_raw: RefCell<Vec<u8>>,
    str_term_and_pad_raw: RefCell<Vec<u8>>,
    str_term_include_raw: RefCell<Vec<u8>>,
}
impl KStruct for BytesEosPadTerm {
    type Root = BytesEosPadTerm;
    type Parent = BytesEosPadTerm;

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
        let t = Self::read_into::<BytesReader, BytesEosPadTerm_StrPadType>(&_t_str_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_pad.borrow_mut() = t;
        *self_rc.str_term_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_raw = self_rc.str_term_raw.borrow();
        let _t_str_term_raw_io = BytesReader::from(str_term_raw.clone());
        let t = Self::read_into::<BytesReader, BytesEosPadTerm_StrTermType>(&_t_str_term_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term.borrow_mut() = t;
        *self_rc.str_term_and_pad_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_and_pad_raw = self_rc.str_term_and_pad_raw.borrow();
        let _t_str_term_and_pad_raw_io = BytesReader::from(str_term_and_pad_raw.clone());
        let t = Self::read_into::<BytesReader, BytesEosPadTerm_StrTermAndPadType>(&_t_str_term_and_pad_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_and_pad.borrow_mut() = t;
        *self_rc.str_term_include_raw.borrow_mut() = _io.read_bytes(20 as usize)?.into();
        let str_term_include_raw = self_rc.str_term_include_raw.borrow();
        let _t_str_term_include_raw_io = BytesReader::from(str_term_include_raw.clone());
        let t = Self::read_into::<BytesReader, BytesEosPadTerm_StrTermIncludeType>(&_t_str_term_include_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str_term_include.borrow_mut() = t;
        Ok(())
    }
}
impl BytesEosPadTerm {
}
impl BytesEosPadTerm {
    pub fn str_pad(&self) -> Ref<'_, OptRc<BytesEosPadTerm_StrPadType>> {
        self.str_pad.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term(&self) -> Ref<'_, OptRc<BytesEosPadTerm_StrTermType>> {
        self.str_term.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term_and_pad(&self) -> Ref<'_, OptRc<BytesEosPadTerm_StrTermAndPadType>> {
        self.str_term_and_pad.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term_include(&self) -> Ref<'_, OptRc<BytesEosPadTerm_StrTermIncludeType>> {
        self.str_term_include.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad_raw.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_raw.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term_and_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad_raw.borrow()
    }
}
impl BytesEosPadTerm {
    pub fn str_term_include_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BytesEosPadTerm_StrPadType {
    pub _root: SharedType<BytesEosPadTerm>,
    pub _parent: SharedType<BytesEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesEosPadTerm_StrPadType {
    type Root = BytesEosPadTerm;
    type Parent = BytesEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_strip_right(&_io.read_bytes_full()?.into(), 64).into();
        Ok(())
    }
}
impl BytesEosPadTerm_StrPadType {
}
impl BytesEosPadTerm_StrPadType {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl BytesEosPadTerm_StrPadType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BytesEosPadTerm_StrTermAndPadType {
    pub _root: SharedType<BytesEosPadTerm>,
    pub _parent: SharedType<BytesEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesEosPadTerm_StrTermAndPadType {
    type Root = BytesEosPadTerm;
    type Parent = BytesEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes_full()?.into(), 43).into(), 64, false).into();
        Ok(())
    }
}
impl BytesEosPadTerm_StrTermAndPadType {
}
impl BytesEosPadTerm_StrTermAndPadType {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl BytesEosPadTerm_StrTermAndPadType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BytesEosPadTerm_StrTermIncludeType {
    pub _root: SharedType<BytesEosPadTerm>,
    pub _parent: SharedType<BytesEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesEosPadTerm_StrTermIncludeType {
    type Root = BytesEosPadTerm;
    type Parent = BytesEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_terminate(&_io.read_bytes_full()?.into(), 64, true).into();
        Ok(())
    }
}
impl BytesEosPadTerm_StrTermIncludeType {
}
impl BytesEosPadTerm_StrTermIncludeType {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl BytesEosPadTerm_StrTermIncludeType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BytesEosPadTerm_StrTermType {
    pub _root: SharedType<BytesEosPadTerm>,
    pub _parent: SharedType<BytesEosPadTerm>,
    pub _self: SharedType<Self>,
    value: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesEosPadTerm_StrTermType {
    type Root = BytesEosPadTerm;
    type Parent = BytesEosPadTerm;

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
        *self_rc.value.borrow_mut() = bytes_terminate(&_io.read_bytes_full()?.into(), 64, false).into();
        Ok(())
    }
}
impl BytesEosPadTerm_StrTermType {
}
impl BytesEosPadTerm_StrTermType {
    pub fn value(&self) -> Ref<'_, Vec<u8>> {
        self.value.borrow()
    }
}
impl BytesEosPadTerm_StrTermType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
