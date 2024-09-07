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
pub struct CombineStr {
    pub _root: SharedType<CombineStr>,
    pub _parent: SharedType<CombineStr>,
    pub _self: SharedType<Self>,
    str_term: RefCell<String>,
    str_limit: RefCell<String>,
    str_eos: RefCell<String>,
    _io: RefCell<BytesReader>,
    f_calc_bytes: Cell<bool>,
    calc_bytes: RefCell<Vec<u8>>,
    f_calc_or_calc_bytes: Cell<bool>,
    calc_or_calc_bytes: RefCell<String>,
    f_eos_or_calc: Cell<bool>,
    eos_or_calc: RefCell<String>,
    f_eos_or_calc_bytes: Cell<bool>,
    eos_or_calc_bytes: RefCell<String>,
    f_limit_or_calc: Cell<bool>,
    limit_or_calc: RefCell<String>,
    f_limit_or_calc_bytes: Cell<bool>,
    limit_or_calc_bytes: RefCell<String>,
    f_limit_or_eos: Cell<bool>,
    limit_or_eos: RefCell<String>,
    f_str_calc: Cell<bool>,
    str_calc: RefCell<String>,
    f_str_calc_bytes: Cell<bool>,
    str_calc_bytes: RefCell<String>,
    f_term_or_calc: Cell<bool>,
    term_or_calc: RefCell<String>,
    f_term_or_calc_bytes: Cell<bool>,
    term_or_calc_bytes: RefCell<String>,
    f_term_or_eos: Cell<bool>,
    term_or_eos: RefCell<String>,
    f_term_or_limit: Cell<bool>,
    term_or_limit: RefCell<String>,
}
impl KStruct for CombineStr {
    type Root = CombineStr;
    type Parent = CombineStr;

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
        *self_rc.str_term.borrow_mut() = bytes_to_str(&_io.read_bytes_term(124, false, true, true)?.into(), "ASCII")?;
        *self_rc.str_limit.borrow_mut() = bytes_to_str(&_io.read_bytes(4 as usize)?.into(), "ASCII")?;
        *self_rc.str_eos.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "ASCII")?;
        Ok(())
    }
}
impl CombineStr {
    pub fn calc_bytes(
        &self
    ) -> KResult<Ref<Vec<u8>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_bytes.get() {
            return Ok(self.calc_bytes.borrow());
        }
        self.f_calc_bytes.set(true);
        *self.calc_bytes.borrow_mut() = vec![0x62u8, 0x61u8, 0x7au8].to_vec();
        Ok(self.calc_bytes.borrow())
    }
    pub fn calc_or_calc_bytes(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_calc_or_calc_bytes.get() {
            return Ok(self.calc_or_calc_bytes.borrow());
        }
        self.f_calc_or_calc_bytes.set(true);
        *self.calc_or_calc_bytes.borrow_mut() = if false { self.str_calc()?.to_string() } else { self.str_calc_bytes()?.to_string() }.to_string();
        Ok(self.calc_or_calc_bytes.borrow())
    }
    pub fn eos_or_calc(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_eos_or_calc.get() {
            return Ok(self.eos_or_calc.borrow());
        }
        self.f_eos_or_calc.set(true);
        *self.eos_or_calc.borrow_mut() = if false { self.str_eos().to_string() } else { self.str_calc()?.to_string() }.to_string();
        Ok(self.eos_or_calc.borrow())
    }
    pub fn eos_or_calc_bytes(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_eos_or_calc_bytes.get() {
            return Ok(self.eos_or_calc_bytes.borrow());
        }
        self.f_eos_or_calc_bytes.set(true);
        *self.eos_or_calc_bytes.borrow_mut() = if true { self.str_eos().to_string() } else { self.str_calc_bytes()?.to_string() }.to_string();
        Ok(self.eos_or_calc_bytes.borrow())
    }
    pub fn limit_or_calc(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_limit_or_calc.get() {
            return Ok(self.limit_or_calc.borrow());
        }
        self.f_limit_or_calc.set(true);
        *self.limit_or_calc.borrow_mut() = if false { self.str_limit().to_string() } else { self.str_calc()?.to_string() }.to_string();
        Ok(self.limit_or_calc.borrow())
    }
    pub fn limit_or_calc_bytes(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_limit_or_calc_bytes.get() {
            return Ok(self.limit_or_calc_bytes.borrow());
        }
        self.f_limit_or_calc_bytes.set(true);
        *self.limit_or_calc_bytes.borrow_mut() = if true { self.str_limit().to_string() } else { self.str_calc_bytes()?.to_string() }.to_string();
        Ok(self.limit_or_calc_bytes.borrow())
    }
    pub fn limit_or_eos(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_limit_or_eos.get() {
            return Ok(self.limit_or_eos.borrow());
        }
        self.f_limit_or_eos.set(true);
        *self.limit_or_eos.borrow_mut() = if true { self.str_limit().to_string() } else { self.str_eos().to_string() }.to_string();
        Ok(self.limit_or_eos.borrow())
    }
    pub fn str_calc(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_calc.get() {
            return Ok(self.str_calc.borrow());
        }
        self.f_str_calc.set(true);
        *self.str_calc.borrow_mut() = "bar".to_string();
        Ok(self.str_calc.borrow())
    }
    pub fn str_calc_bytes(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_str_calc_bytes.get() {
            return Ok(self.str_calc_bytes.borrow());
        }
        self.f_str_calc_bytes.set(true);
        *self.str_calc_bytes.borrow_mut() = bytes_to_str(&*self.calc_bytes()?, "ASCII")?.to_string();
        Ok(self.str_calc_bytes.borrow())
    }
    pub fn term_or_calc(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_calc.get() {
            return Ok(self.term_or_calc.borrow());
        }
        self.f_term_or_calc.set(true);
        *self.term_or_calc.borrow_mut() = if true { self.str_term().to_string() } else { self.str_calc()?.to_string() }.to_string();
        Ok(self.term_or_calc.borrow())
    }
    pub fn term_or_calc_bytes(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_calc_bytes.get() {
            return Ok(self.term_or_calc_bytes.borrow());
        }
        self.f_term_or_calc_bytes.set(true);
        *self.term_or_calc_bytes.borrow_mut() = if false { self.str_term().to_string() } else { self.str_calc_bytes()?.to_string() }.to_string();
        Ok(self.term_or_calc_bytes.borrow())
    }
    pub fn term_or_eos(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_eos.get() {
            return Ok(self.term_or_eos.borrow());
        }
        self.f_term_or_eos.set(true);
        *self.term_or_eos.borrow_mut() = if false { self.str_term().to_string() } else { self.str_eos().to_string() }.to_string();
        Ok(self.term_or_eos.borrow())
    }
    pub fn term_or_limit(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_term_or_limit.get() {
            return Ok(self.term_or_limit.borrow());
        }
        self.f_term_or_limit.set(true);
        *self.term_or_limit.borrow_mut() = if true { self.str_term().to_string() } else { self.str_limit().to_string() }.to_string();
        Ok(self.term_or_limit.borrow())
    }
}
impl CombineStr {
    pub fn str_term(&self) -> Ref<String> {
        self.str_term.borrow()
    }
}
impl CombineStr {
    pub fn str_limit(&self) -> Ref<String> {
        self.str_limit.borrow()
    }
}
impl CombineStr {
    pub fn str_eos(&self) -> Ref<String> {
        self.str_eos.borrow()
    }
}
impl CombineStr {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
