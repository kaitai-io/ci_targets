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
pub struct StrEncodingsEscapingToS {
    pub _root: SharedType<StrEncodingsEscapingToS>,
    pub _parent: SharedType<StrEncodingsEscapingToS>,
    pub _self: SharedType<Self>,
    len_of_1: RefCell<u16>,
    str1_raw: RefCell<Vec<u8>>,
    len_of_2: RefCell<u16>,
    str2_raw: RefCell<Vec<u8>>,
    len_of_3: RefCell<u16>,
    str3_raw: RefCell<Vec<u8>>,
    len_of_4: RefCell<u16>,
    str4_raw: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_str1: Cell<bool>,
    str1: RefCell<String>,
    f_str2: Cell<bool>,
    str2: RefCell<String>,
    f_str3: Cell<bool>,
    str3: RefCell<String>,
    f_str4: Cell<bool>,
    str4: RefCell<String>,
}
impl KStruct for StrEncodingsEscapingToS {
    type Root = StrEncodingsEscapingToS;
    type Parent = StrEncodingsEscapingToS;

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
        *self_rc.len_of_2.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str2_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_2() as usize)?.into();
        *self_rc.len_of_3.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str3_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_3() as usize)?.into();
        *self_rc.len_of_4.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.str4_raw.borrow_mut() = _io.read_bytes(*self_rc.len_of_4() as usize)?.into();
        Ok(())
    }
}
impl StrEncodingsEscapingToS {
    pub fn str1(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str1.get() {
            return Ok(self.str1.borrow());
        }
        self.f_str1.set(true);
        *self.str1.borrow_mut() = bytes_to_str(&*self.str1_raw(), "ASCII\\x")?.to_string();
        Ok(self.str1.borrow())
    }
    pub fn str2(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str2.get() {
            return Ok(self.str2.borrow());
        }
        self.f_str2.set(true);
        *self.str2.borrow_mut() = bytes_to_str(&*self.str2_raw(), "UTF-8\'x")?.to_string();
        Ok(self.str2.borrow())
    }
    pub fn str3(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str3.get() {
            return Ok(self.str3.borrow());
        }
        self.f_str3.set(true);
        *self.str3.borrow_mut() = bytes_to_str(&*self.str3_raw(), "SJIS\"x")?.to_string();
        Ok(self.str3.borrow())
    }
    pub fn str4(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str4.get() {
            return Ok(self.str4.borrow());
        }
        self.f_str4.set(true);
        *self.str4.borrow_mut() = bytes_to_str(&*self.str4_raw(), "IBM437\nx")?.to_string();
        Ok(self.str4.borrow())
    }
}
impl StrEncodingsEscapingToS {
    pub fn len_of_1(&self) -> Ref<'_, u16> {
        self.len_of_1.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn str1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str1_raw.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn len_of_2(&self) -> Ref<'_, u16> {
        self.len_of_2.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn str2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str2_raw.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn len_of_3(&self) -> Ref<'_, u16> {
        self.len_of_3.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn str3_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str3_raw.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn len_of_4(&self) -> Ref<'_, u16> {
        self.len_of_4.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn str4_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str4_raw.borrow()
    }
}
impl StrEncodingsEscapingToS {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
