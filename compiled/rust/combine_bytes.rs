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
pub struct CombineBytes {
    pub _root: SharedType<CombineBytes>,
    pub _parent: SharedType<CombineBytes>,
    pub _self: SharedType<Self>,
    bytes_term: RefCell<Vec<u8>>,
    bytes_limit: RefCell<Vec<u8>>,
    bytes_eos: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_bytes_calc: Cell<bool>,
    bytes_calc: RefCell<Vec<u8>>,
    f_eos_or_calc: Cell<bool>,
    eos_or_calc: RefCell<Vec<u8>>,
    f_limit_or_calc: Cell<bool>,
    limit_or_calc: RefCell<Vec<u8>>,
    f_limit_or_eos: Cell<bool>,
    limit_or_eos: RefCell<Vec<u8>>,
    f_term_or_calc: Cell<bool>,
    term_or_calc: RefCell<Vec<u8>>,
    f_term_or_eos: Cell<bool>,
    term_or_eos: RefCell<Vec<u8>>,
    f_term_or_limit: Cell<bool>,
    term_or_limit: RefCell<Vec<u8>>,
}
impl KStruct for CombineBytes {
    type Root = CombineBytes;
    type Parent = CombineBytes;

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
        *self_rc.bytes_term.borrow_mut() = _io.read_bytes_term(124, false, true, true)?.into();
        *self_rc.bytes_limit.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        *self_rc.bytes_eos.borrow_mut() = _io.read_bytes_full()?.into();
        Ok(())
    }
}
impl CombineBytes {
    pub fn bytes_calc(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_bytes_calc.get() {
            return Ok(self.bytes_calc.borrow());
        }
        self.f_bytes_calc.set(true);
        *self.bytes_calc.borrow_mut() = vec![0x52u8, 0x6eu8, 0x44u8].to_vec();
        Ok(self.bytes_calc.borrow())
    }
    pub fn eos_or_calc(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_eos_or_calc.get() {
            return Ok(self.eos_or_calc.borrow());
        }
        self.f_eos_or_calc.set(true);
        *self.eos_or_calc.borrow_mut() = if true { self.bytes_eos().to_vec() } else { self.bytes_calc()?.to_vec() }.to_vec();
        Ok(self.eos_or_calc.borrow())
    }
    pub fn limit_or_calc(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_limit_or_calc.get() {
            return Ok(self.limit_or_calc.borrow());
        }
        self.f_limit_or_calc.set(true);
        *self.limit_or_calc.borrow_mut() = if false { self.bytes_limit().to_vec() } else { self.bytes_calc()?.to_vec() }.to_vec();
        Ok(self.limit_or_calc.borrow())
    }
    pub fn limit_or_eos(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_limit_or_eos.get() {
            return Ok(self.limit_or_eos.borrow());
        }
        self.f_limit_or_eos.set(true);
        *self.limit_or_eos.borrow_mut() = if true { self.bytes_limit().to_vec() } else { self.bytes_eos().to_vec() }.to_vec();
        Ok(self.limit_or_eos.borrow())
    }
    pub fn term_or_calc(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_calc.get() {
            return Ok(self.term_or_calc.borrow());
        }
        self.f_term_or_calc.set(true);
        *self.term_or_calc.borrow_mut() = if true { self.bytes_term().to_vec() } else { self.bytes_calc()?.to_vec() }.to_vec();
        Ok(self.term_or_calc.borrow())
    }
    pub fn term_or_eos(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_eos.get() {
            return Ok(self.term_or_eos.borrow());
        }
        self.f_term_or_eos.set(true);
        *self.term_or_eos.borrow_mut() = if false { self.bytes_term().to_vec() } else { self.bytes_eos().to_vec() }.to_vec();
        Ok(self.term_or_eos.borrow())
    }
    pub fn term_or_limit(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_limit.get() {
            return Ok(self.term_or_limit.borrow());
        }
        self.f_term_or_limit.set(true);
        *self.term_or_limit.borrow_mut() = if true { self.bytes_term().to_vec() } else { self.bytes_limit().to_vec() }.to_vec();
        Ok(self.term_or_limit.borrow())
    }
}
impl CombineBytes {
    pub fn bytes_term(&self) -> Ref<Vec<u8>> {
        self.bytes_term.borrow()
    }
}
impl CombineBytes {
    pub fn bytes_limit(&self) -> Ref<Vec<u8>> {
        self.bytes_limit.borrow()
    }
}
impl CombineBytes {
    pub fn bytes_eos(&self) -> Ref<Vec<u8>> {
        self.bytes_eos.borrow()
    }
}
impl CombineBytes {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
