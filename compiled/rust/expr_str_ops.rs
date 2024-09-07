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
pub struct ExprStrOps {
    pub _root: SharedType<ExprStrOps>,
    pub _parent: SharedType<ExprStrOps>,
    pub _self: SharedType<Self>,
    one: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_one_len: Cell<bool>,
    one_len: RefCell<i32>,
    f_one_rev: Cell<bool>,
    one_rev: RefCell<String>,
    f_one_substr_0_to_0: Cell<bool>,
    one_substr_0_to_0: RefCell<String>,
    f_one_substr_0_to_3: Cell<bool>,
    one_substr_0_to_3: RefCell<String>,
    f_one_substr_2_to_5: Cell<bool>,
    one_substr_2_to_5: RefCell<String>,
    f_one_substr_3_to_3: Cell<bool>,
    one_substr_3_to_3: RefCell<String>,
    f_to_i_attr: Cell<bool>,
    to_i_attr: RefCell<i32>,
    f_to_i_r10: Cell<bool>,
    to_i_r10: RefCell<i32>,
    f_to_i_r16: Cell<bool>,
    to_i_r16: RefCell<i32>,
    f_to_i_r2: Cell<bool>,
    to_i_r2: RefCell<i32>,
    f_to_i_r8: Cell<bool>,
    to_i_r8: RefCell<i32>,
    f_two: Cell<bool>,
    two: RefCell<String>,
    f_two_len: Cell<bool>,
    two_len: RefCell<i32>,
    f_two_rev: Cell<bool>,
    two_rev: RefCell<String>,
    f_two_substr_0_to_10: Cell<bool>,
    two_substr_0_to_10: RefCell<String>,
    f_two_substr_0_to_7: Cell<bool>,
    two_substr_0_to_7: RefCell<String>,
    f_two_substr_4_to_10: Cell<bool>,
    two_substr_4_to_10: RefCell<String>,
}
impl KStruct for ExprStrOps {
    type Root = ExprStrOps;
    type Parent = ExprStrOps;

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
        *self_rc.one.borrow_mut() = bytes_to_str(&_io.read_bytes(5 as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl ExprStrOps {
    pub fn one_len(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_len.get() {
            return Ok(self.one_len.borrow());
        }
        self.f_one_len.set(true);
        *self.one_len.borrow_mut() = (self.one().len()) as i32;
        Ok(self.one_len.borrow())
    }
    pub fn one_rev(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_rev.get() {
            return Ok(self.one_rev.borrow());
        }
        self.f_one_rev.set(true);
        *self.one_rev.borrow_mut() = reverse_string(&*self.one())?.to_string();
        Ok(self.one_rev.borrow())
    }
    pub fn one_substr_0_to_0(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_substr_0_to_0.get() {
            return Ok(self.one_substr_0_to_0.borrow());
        }
        self.f_one_substr_0_to_0.set(true);
        *self.one_substr_0_to_0.borrow_mut() = self.one()[0..0].to_string();
        Ok(self.one_substr_0_to_0.borrow())
    }
    pub fn one_substr_0_to_3(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_substr_0_to_3.get() {
            return Ok(self.one_substr_0_to_3.borrow());
        }
        self.f_one_substr_0_to_3.set(true);
        *self.one_substr_0_to_3.borrow_mut() = self.one()[0..3].to_string();
        Ok(self.one_substr_0_to_3.borrow())
    }
    pub fn one_substr_2_to_5(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_substr_2_to_5.get() {
            return Ok(self.one_substr_2_to_5.borrow());
        }
        self.f_one_substr_2_to_5.set(true);
        *self.one_substr_2_to_5.borrow_mut() = self.one()[2..5].to_string();
        Ok(self.one_substr_2_to_5.borrow())
    }
    pub fn one_substr_3_to_3(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_one_substr_3_to_3.get() {
            return Ok(self.one_substr_3_to_3.borrow());
        }
        self.f_one_substr_3_to_3.set(true);
        *self.one_substr_3_to_3.borrow_mut() = self.one()[3..3].to_string();
        Ok(self.one_substr_3_to_3.borrow())
    }
    pub fn to_i_attr(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_attr.get() {
            return Ok(self.to_i_attr.borrow());
        }
        self.f_to_i_attr.set(true);
        *self.to_i_attr.borrow_mut() = ("9173".parse::<i32>().map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_attr.borrow())
    }
    pub fn to_i_r10(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r10.get() {
            return Ok(self.to_i_r10.borrow());
        }
        self.f_to_i_r10.set(true);
        *self.to_i_r10.borrow_mut() = ("-072".parse::<i32>().map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r10.borrow())
    }
    pub fn to_i_r16(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r16.get() {
            return Ok(self.to_i_r16.borrow());
        }
        self.f_to_i_r16.set(true);
        *self.to_i_r16.borrow_mut() = (i32::from_str_radix("47cf", 16).map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r16.borrow())
    }
    pub fn to_i_r2(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r2.get() {
            return Ok(self.to_i_r2.borrow());
        }
        self.f_to_i_r2.set(true);
        *self.to_i_r2.borrow_mut() = (i32::from_str_radix("1010110", 2).map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r2.borrow())
    }
    pub fn to_i_r8(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_to_i_r8.get() {
            return Ok(self.to_i_r8.borrow());
        }
        self.f_to_i_r8.set(true);
        *self.to_i_r8.borrow_mut() = (i32::from_str_radix("721", 8).map_err(|_| KError::CastError)?) as i32;
        Ok(self.to_i_r8.borrow())
    }
    pub fn two(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two.get() {
            return Ok(self.two.borrow());
        }
        self.f_two.set(true);
        *self.two.borrow_mut() = "0123456789".to_string();
        Ok(self.two.borrow())
    }
    pub fn two_len(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_len.get() {
            return Ok(self.two_len.borrow());
        }
        self.f_two_len.set(true);
        *self.two_len.borrow_mut() = (self.two()?.len()) as i32;
        Ok(self.two_len.borrow())
    }
    pub fn two_rev(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_rev.get() {
            return Ok(self.two_rev.borrow());
        }
        self.f_two_rev.set(true);
        *self.two_rev.borrow_mut() = reverse_string(&*self.two()?)?.to_string();
        Ok(self.two_rev.borrow())
    }
    pub fn two_substr_0_to_10(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_substr_0_to_10.get() {
            return Ok(self.two_substr_0_to_10.borrow());
        }
        self.f_two_substr_0_to_10.set(true);
        *self.two_substr_0_to_10.borrow_mut() = self.two()?[0..10].to_string();
        Ok(self.two_substr_0_to_10.borrow())
    }
    pub fn two_substr_0_to_7(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_substr_0_to_7.get() {
            return Ok(self.two_substr_0_to_7.borrow());
        }
        self.f_two_substr_0_to_7.set(true);
        *self.two_substr_0_to_7.borrow_mut() = self.two()?[0..7].to_string();
        Ok(self.two_substr_0_to_7.borrow())
    }
    pub fn two_substr_4_to_10(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_two_substr_4_to_10.get() {
            return Ok(self.two_substr_4_to_10.borrow());
        }
        self.f_two_substr_4_to_10.set(true);
        *self.two_substr_4_to_10.borrow_mut() = self.two()?[4..10].to_string();
        Ok(self.two_substr_4_to_10.borrow())
    }
}
impl ExprStrOps {
    pub fn one(&self) -> Ref<String> {
        self.one.borrow()
    }
}
impl ExprStrOps {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
