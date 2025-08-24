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
pub struct StrEncodingsEscapingEnc {
    pub _root: SharedType<StrEncodingsEscapingEnc>,
    pub _parent: SharedType<StrEncodingsEscapingEnc>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    str1: RefCell<OptRc<StrEncodingsEscapingEnc_Str1Wrapper>>,
    len_of_2: RefCell<u16>,
    str2: RefCell<OptRc<StrEncodingsEscapingEnc_Str2Wrapper>>,
    len_of_3: RefCell<u16>,
    str3: RefCell<OptRc<StrEncodingsEscapingEnc_Str3Wrapper>>,
    len_of_4: RefCell<u16>,
    str4: RefCell<OptRc<StrEncodingsEscapingEnc_Str4Wrapper>>,
    _io: RefCell<BytesReader>,
    str1_raw: RefCell<Vec<u8>>,
    str2_raw: RefCell<Vec<u8>>,
    str3_raw: RefCell<Vec<u8>>,
    str4_raw: RefCell<Vec<u8>>,
}
impl KStruct for StrEncodingsEscapingEnc {
    type Root = StrEncodingsEscapingEnc;
    type Parent = StrEncodingsEscapingEnc;

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
        *self_rc.len_of_1.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str1_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_1() as usize)?.into();
        let str1_raw = self_rc.str1_raw.borrow();
        let _t_str1_raw_io = BytesReader::from(str1_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsEscapingEnc_Str1Wrapper>(&_t_str1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str1.borrow_mut() = t;
        *self_rc.len_of_2.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str2_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_2() as usize)?.into();
        let str2_raw = self_rc.str2_raw.borrow();
        let _t_str2_raw_io = BytesReader::from(str2_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsEscapingEnc_Str2Wrapper>(&_t_str2_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str2.borrow_mut() = t;
        *self_rc.len_of_3.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str3_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_3() as usize)?.into();
        let str3_raw = self_rc.str3_raw.borrow();
        let _t_str3_raw_io = BytesReader::from(str3_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsEscapingEnc_Str3Wrapper>(&_t_str3_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str3.borrow_mut() = t;
        *self_rc.len_of_4.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str4_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_4() as usize)?.into();
        let str4_raw = self_rc.str4_raw.borrow();
        let _t_str4_raw_io = BytesReader::from(str4_raw.clone());
        let t = Self::read_into::<BytesReader, StrEncodingsEscapingEnc_Str4Wrapper>(&_t_str4_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.str4.borrow_mut() = t;
        Ok(())
    }
}
impl StrEncodingsEscapingEnc {
}
impl StrEncodingsEscapingEnc {
    pub fn len_of_1(&self) -> Ref<'_, u16> {
        self.len_of_1.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str1(&self) -> Ref<'_, OptRc<StrEncodingsEscapingEnc_Str1Wrapper>> {
        self.str1.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn len_of_2(&self) -> Ref<'_, u16> {
        self.len_of_2.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str2(&self) -> Ref<'_, OptRc<StrEncodingsEscapingEnc_Str2Wrapper>> {
        self.str2.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn len_of_3(&self) -> Ref<'_, u16> {
        self.len_of_3.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str3(&self) -> Ref<'_, OptRc<StrEncodingsEscapingEnc_Str3Wrapper>> {
        self.str3.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn len_of_4(&self) -> Ref<'_, u16> {
        self.len_of_4.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str4(&self) -> Ref<'_, OptRc<StrEncodingsEscapingEnc_Str4Wrapper>> {
        self.str4.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str1_raw.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str2_raw.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str3_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str3_raw.borrow()
    }
}
impl StrEncodingsEscapingEnc {
    pub fn str4_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str4_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsEscapingEnc_Str1Wrapper {
    pub _root: SharedType<StrEncodingsEscapingEnc>,
    pub _parent: SharedType<StrEncodingsEscapingEnc>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_v: Cell<bool>,
    v: RefCell<String>,
}
impl KStruct for StrEncodingsEscapingEnc_Str1Wrapper {
    type Root = StrEncodingsEscapingEnc;
    type Parent = StrEncodingsEscapingEnc;

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
        Ok(())
    }
}
impl StrEncodingsEscapingEnc_Str1Wrapper {
    pub fn v(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v.get() {
            return Ok(self.v.borrow());
        }
        self.f_v.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.v.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "ASCII\\x")?;
        _io.seek(_pos)?;
        Ok(self.v.borrow())
    }
}
impl StrEncodingsEscapingEnc_Str1Wrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsEscapingEnc_Str2Wrapper {
    pub _root: SharedType<StrEncodingsEscapingEnc>,
    pub _parent: SharedType<StrEncodingsEscapingEnc>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_v: Cell<bool>,
    v: RefCell<String>,
}
impl KStruct for StrEncodingsEscapingEnc_Str2Wrapper {
    type Root = StrEncodingsEscapingEnc;
    type Parent = StrEncodingsEscapingEnc;

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
        Ok(())
    }
}
impl StrEncodingsEscapingEnc_Str2Wrapper {
    pub fn v(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v.get() {
            return Ok(self.v.borrow());
        }
        self.f_v.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.v.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "UTF-8\'x")?;
        _io.seek(_pos)?;
        Ok(self.v.borrow())
    }
}
impl StrEncodingsEscapingEnc_Str2Wrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsEscapingEnc_Str3Wrapper {
    pub _root: SharedType<StrEncodingsEscapingEnc>,
    pub _parent: SharedType<StrEncodingsEscapingEnc>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_v: Cell<bool>,
    v: RefCell<String>,
}
impl KStruct for StrEncodingsEscapingEnc_Str3Wrapper {
    type Root = StrEncodingsEscapingEnc;
    type Parent = StrEncodingsEscapingEnc;

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
        Ok(())
    }
}
impl StrEncodingsEscapingEnc_Str3Wrapper {
    pub fn v(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v.get() {
            return Ok(self.v.borrow());
        }
        self.f_v.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.v.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "SJIS\"x")?;
        _io.seek(_pos)?;
        Ok(self.v.borrow())
    }
}
impl StrEncodingsEscapingEnc_Str3Wrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct StrEncodingsEscapingEnc_Str4Wrapper {
    pub _root: SharedType<StrEncodingsEscapingEnc>,
    pub _parent: SharedType<StrEncodingsEscapingEnc>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_v: Cell<bool>,
    v: RefCell<String>,
}
impl KStruct for StrEncodingsEscapingEnc_Str4Wrapper {
    type Root = StrEncodingsEscapingEnc;
    type Parent = StrEncodingsEscapingEnc;

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
        Ok(())
    }
}
impl StrEncodingsEscapingEnc_Str4Wrapper {
    pub fn v(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_v.get() {
            return Ok(self.v.borrow());
        }
        self.f_v.set(true);
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        *self.v.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "IBM437\nx")?;
        _io.seek(_pos)?;
        Ok(self.v.borrow())
    }
}
impl StrEncodingsEscapingEnc_Str4Wrapper {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
