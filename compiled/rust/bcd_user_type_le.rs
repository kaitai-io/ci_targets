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
pub struct BcdUserTypeLe {
    pub _root: SharedType<BcdUserTypeLe>,
    pub _parent: SharedType<BcdUserTypeLe>,
    pub _self: SharedType<Self>,
    ltr: RefCell<OptRc<BcdUserTypeLe_LtrObj>>,
    rtl: RefCell<OptRc<BcdUserTypeLe_RtlObj>>,
    leading_zero_ltr: RefCell<OptRc<BcdUserTypeLe_LeadingZeroLtrObj>>,
    _io: RefCell<BytesReader>,
    ltr_raw: RefCell<Vec<u8>>,
    rtl_raw: RefCell<Vec<u8>>,
    leading_zero_ltr_raw: RefCell<Vec<u8>>,
}
impl KStruct for BcdUserTypeLe {
    type Root = BcdUserTypeLe;
    type Parent = BcdUserTypeLe;

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
        *self_rc.ltr_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let ltr_raw = self_rc.ltr_raw.borrow();
        let _t_ltr_raw_io = BytesReader::from(ltr_raw.clone());
        let t = Self::read_into::<BytesReader, BcdUserTypeLe_LtrObj>(&_t_ltr_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.ltr.borrow_mut() = t;
        *self_rc.rtl_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let rtl_raw = self_rc.rtl_raw.borrow();
        let _t_rtl_raw_io = BytesReader::from(rtl_raw.clone());
        let t = Self::read_into::<BytesReader, BcdUserTypeLe_RtlObj>(&_t_rtl_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.rtl.borrow_mut() = t;
        *self_rc.leading_zero_ltr_raw.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        let leading_zero_ltr_raw = self_rc.leading_zero_ltr_raw.borrow();
        let _t_leading_zero_ltr_raw_io = BytesReader::from(leading_zero_ltr_raw.clone());
        let t = Self::read_into::<BytesReader, BcdUserTypeLe_LeadingZeroLtrObj>(&_t_leading_zero_ltr_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.leading_zero_ltr.borrow_mut() = t;
        Ok(())
    }
}
impl BcdUserTypeLe {
}
impl BcdUserTypeLe {
    pub fn ltr(&self) -> Ref<'_, OptRc<BcdUserTypeLe_LtrObj>> {
        self.ltr.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn rtl(&self) -> Ref<'_, OptRc<BcdUserTypeLe_RtlObj>> {
        self.rtl.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn leading_zero_ltr(&self) -> Ref<'_, OptRc<BcdUserTypeLe_LeadingZeroLtrObj>> {
        self.leading_zero_ltr.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn ltr_raw(&self) -> Ref<'_, Vec<u8>> {
        self.ltr_raw.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn rtl_raw(&self) -> Ref<'_, Vec<u8>> {
        self.rtl_raw.borrow()
    }
}
impl BcdUserTypeLe {
    pub fn leading_zero_ltr_raw(&self) -> Ref<'_, Vec<u8>> {
        self.leading_zero_ltr_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BcdUserTypeLe_LeadingZeroLtrObj {
    pub _root: SharedType<BcdUserTypeLe>,
    pub _parent: SharedType<BcdUserTypeLe>,
    pub _self: SharedType<Self>,
    b1: RefCell<u8>,
    b2: RefCell<u8>,
    b3: RefCell<u8>,
    b4: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_as_int: Cell<bool>,
    as_int: RefCell<i32>,
    f_as_str: Cell<bool>,
    as_str: RefCell<String>,
    f_digit1: Cell<bool>,
    digit1: RefCell<i32>,
    f_digit2: Cell<bool>,
    digit2: RefCell<i32>,
    f_digit3: Cell<bool>,
    digit3: RefCell<i32>,
    f_digit4: Cell<bool>,
    digit4: RefCell<i32>,
    f_digit5: Cell<bool>,
    digit5: RefCell<i32>,
    f_digit6: Cell<bool>,
    digit6: RefCell<i32>,
    f_digit7: Cell<bool>,
    digit7: RefCell<i32>,
    f_digit8: Cell<bool>,
    digit8: RefCell<i32>,
}
impl KStruct for BcdUserTypeLe_LeadingZeroLtrObj {
    type Root = BcdUserTypeLe;
    type Parent = BcdUserTypeLe;

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
        *self_rc.b1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b2.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b3.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b4.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn as_int(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_int.get() {
            return Ok(self.as_int.borrow());
        }
        self.f_as_int.set(true);
        *self.as_int.borrow_mut() = (((((((((((((((((*self.digit8()? as i32) * (1 as i32)) as i32) + (((*self.digit7()? as i32) * (10 as i32)) as i32)) as i32) + (((*self.digit6()? as i32) * (100 as i32)) as i32)) as i32) + (((*self.digit5()? as i32) * (1000 as i32)) as i32)) as i32) + (((*self.digit4()? as i32) * (10000 as i32)) as i32)) as i32) + (((*self.digit3()? as i32) * (100000 as i32)) as i32)) as i32) + (((*self.digit2()? as i32) * (1000000 as i32)) as i32)) as i32) + (((*self.digit1()? as i32) * (10000000 as i32)) as i32))) as i32;
        Ok(self.as_int.borrow())
    }
    pub fn as_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_str.get() {
            return Ok(self.as_str.borrow());
        }
        self.f_as_str.set(true);
        *self.as_str.borrow_mut() = format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", self.digit1()?.to_string(), self.digit2()?.to_string()), self.digit3()?.to_string()), self.digit4()?.to_string()), self.digit5()?.to_string()), self.digit6()?.to_string()), self.digit7()?.to_string()), self.digit8()?.to_string()).to_string();
        Ok(self.as_str.borrow())
    }
    pub fn digit1(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit1.get() {
            return Ok(self.digit1.borrow());
        }
        self.f_digit1.set(true);
        *self.digit1.borrow_mut() = ((((((*self.b4() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit1.borrow())
    }
    pub fn digit2(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit2.get() {
            return Ok(self.digit2.borrow());
        }
        self.f_digit2.set(true);
        *self.digit2.borrow_mut() = (((*self.b4() as u8) & (15 as u8))) as i32;
        Ok(self.digit2.borrow())
    }
    pub fn digit3(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit3.get() {
            return Ok(self.digit3.borrow());
        }
        self.f_digit3.set(true);
        *self.digit3.borrow_mut() = ((((((*self.b3() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit3.borrow())
    }
    pub fn digit4(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit4.get() {
            return Ok(self.digit4.borrow());
        }
        self.f_digit4.set(true);
        *self.digit4.borrow_mut() = (((*self.b3() as u8) & (15 as u8))) as i32;
        Ok(self.digit4.borrow())
    }
    pub fn digit5(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit5.get() {
            return Ok(self.digit5.borrow());
        }
        self.f_digit5.set(true);
        *self.digit5.borrow_mut() = ((((((*self.b2() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit5.borrow())
    }
    pub fn digit6(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit6.get() {
            return Ok(self.digit6.borrow());
        }
        self.f_digit6.set(true);
        *self.digit6.borrow_mut() = (((*self.b2() as u8) & (15 as u8))) as i32;
        Ok(self.digit6.borrow())
    }
    pub fn digit7(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit7.get() {
            return Ok(self.digit7.borrow());
        }
        self.f_digit7.set(true);
        *self.digit7.borrow_mut() = ((((((*self.b1() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit7.borrow())
    }
    pub fn digit8(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit8.get() {
            return Ok(self.digit8.borrow());
        }
        self.f_digit8.set(true);
        *self.digit8.borrow_mut() = (((*self.b1() as u8) & (15 as u8))) as i32;
        Ok(self.digit8.borrow())
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn b1(&self) -> Ref<'_, u8> {
        self.b1.borrow()
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn b2(&self) -> Ref<'_, u8> {
        self.b2.borrow()
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn b3(&self) -> Ref<'_, u8> {
        self.b3.borrow()
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn b4(&self) -> Ref<'_, u8> {
        self.b4.borrow()
    }
}
impl BcdUserTypeLe_LeadingZeroLtrObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BcdUserTypeLe_LtrObj {
    pub _root: SharedType<BcdUserTypeLe>,
    pub _parent: SharedType<BcdUserTypeLe>,
    pub _self: SharedType<Self>,
    b1: RefCell<u8>,
    b2: RefCell<u8>,
    b3: RefCell<u8>,
    b4: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_as_int: Cell<bool>,
    as_int: RefCell<i32>,
    f_as_str: Cell<bool>,
    as_str: RefCell<String>,
    f_digit1: Cell<bool>,
    digit1: RefCell<i32>,
    f_digit2: Cell<bool>,
    digit2: RefCell<i32>,
    f_digit3: Cell<bool>,
    digit3: RefCell<i32>,
    f_digit4: Cell<bool>,
    digit4: RefCell<i32>,
    f_digit5: Cell<bool>,
    digit5: RefCell<i32>,
    f_digit6: Cell<bool>,
    digit6: RefCell<i32>,
    f_digit7: Cell<bool>,
    digit7: RefCell<i32>,
    f_digit8: Cell<bool>,
    digit8: RefCell<i32>,
}
impl KStruct for BcdUserTypeLe_LtrObj {
    type Root = BcdUserTypeLe;
    type Parent = BcdUserTypeLe;

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
        *self_rc.b1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b2.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b3.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b4.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn as_int(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_int.get() {
            return Ok(self.as_int.borrow());
        }
        self.f_as_int.set(true);
        *self.as_int.borrow_mut() = (((((((((((((((((*self.digit8()? as i32) * (1 as i32)) as i32) + (((*self.digit7()? as i32) * (10 as i32)) as i32)) as i32) + (((*self.digit6()? as i32) * (100 as i32)) as i32)) as i32) + (((*self.digit5()? as i32) * (1000 as i32)) as i32)) as i32) + (((*self.digit4()? as i32) * (10000 as i32)) as i32)) as i32) + (((*self.digit3()? as i32) * (100000 as i32)) as i32)) as i32) + (((*self.digit2()? as i32) * (1000000 as i32)) as i32)) as i32) + (((*self.digit1()? as i32) * (10000000 as i32)) as i32))) as i32;
        Ok(self.as_int.borrow())
    }
    pub fn as_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_str.get() {
            return Ok(self.as_str.borrow());
        }
        self.f_as_str.set(true);
        *self.as_str.borrow_mut() = format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", self.digit1()?.to_string(), self.digit2()?.to_string()), self.digit3()?.to_string()), self.digit4()?.to_string()), self.digit5()?.to_string()), self.digit6()?.to_string()), self.digit7()?.to_string()), self.digit8()?.to_string()).to_string();
        Ok(self.as_str.borrow())
    }
    pub fn digit1(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit1.get() {
            return Ok(self.digit1.borrow());
        }
        self.f_digit1.set(true);
        *self.digit1.borrow_mut() = ((((((*self.b4() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit1.borrow())
    }
    pub fn digit2(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit2.get() {
            return Ok(self.digit2.borrow());
        }
        self.f_digit2.set(true);
        *self.digit2.borrow_mut() = (((*self.b4() as u8) & (15 as u8))) as i32;
        Ok(self.digit2.borrow())
    }
    pub fn digit3(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit3.get() {
            return Ok(self.digit3.borrow());
        }
        self.f_digit3.set(true);
        *self.digit3.borrow_mut() = ((((((*self.b3() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit3.borrow())
    }
    pub fn digit4(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit4.get() {
            return Ok(self.digit4.borrow());
        }
        self.f_digit4.set(true);
        *self.digit4.borrow_mut() = (((*self.b3() as u8) & (15 as u8))) as i32;
        Ok(self.digit4.borrow())
    }
    pub fn digit5(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit5.get() {
            return Ok(self.digit5.borrow());
        }
        self.f_digit5.set(true);
        *self.digit5.borrow_mut() = ((((((*self.b2() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit5.borrow())
    }
    pub fn digit6(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit6.get() {
            return Ok(self.digit6.borrow());
        }
        self.f_digit6.set(true);
        *self.digit6.borrow_mut() = (((*self.b2() as u8) & (15 as u8))) as i32;
        Ok(self.digit6.borrow())
    }
    pub fn digit7(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit7.get() {
            return Ok(self.digit7.borrow());
        }
        self.f_digit7.set(true);
        *self.digit7.borrow_mut() = ((((((*self.b1() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit7.borrow())
    }
    pub fn digit8(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit8.get() {
            return Ok(self.digit8.borrow());
        }
        self.f_digit8.set(true);
        *self.digit8.borrow_mut() = (((*self.b1() as u8) & (15 as u8))) as i32;
        Ok(self.digit8.borrow())
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn b1(&self) -> Ref<'_, u8> {
        self.b1.borrow()
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn b2(&self) -> Ref<'_, u8> {
        self.b2.borrow()
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn b3(&self) -> Ref<'_, u8> {
        self.b3.borrow()
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn b4(&self) -> Ref<'_, u8> {
        self.b4.borrow()
    }
}
impl BcdUserTypeLe_LtrObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct BcdUserTypeLe_RtlObj {
    pub _root: SharedType<BcdUserTypeLe>,
    pub _parent: SharedType<BcdUserTypeLe>,
    pub _self: SharedType<Self>,
    b1: RefCell<u8>,
    b2: RefCell<u8>,
    b3: RefCell<u8>,
    b4: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_as_int: Cell<bool>,
    as_int: RefCell<i32>,
    f_as_str: Cell<bool>,
    as_str: RefCell<String>,
    f_digit1: Cell<bool>,
    digit1: RefCell<i32>,
    f_digit2: Cell<bool>,
    digit2: RefCell<i32>,
    f_digit3: Cell<bool>,
    digit3: RefCell<i32>,
    f_digit4: Cell<bool>,
    digit4: RefCell<i32>,
    f_digit5: Cell<bool>,
    digit5: RefCell<i32>,
    f_digit6: Cell<bool>,
    digit6: RefCell<i32>,
    f_digit7: Cell<bool>,
    digit7: RefCell<i32>,
    f_digit8: Cell<bool>,
    digit8: RefCell<i32>,
}
impl KStruct for BcdUserTypeLe_RtlObj {
    type Root = BcdUserTypeLe;
    type Parent = BcdUserTypeLe;

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
        *self_rc.b1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b2.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b3.borrow_mut() = _io.read_u1()?.into();
        *self_rc.b4.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn as_int(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_int.get() {
            return Ok(self.as_int.borrow());
        }
        self.f_as_int.set(true);
        *self.as_int.borrow_mut() = (((((((((((((((((*self.digit1()? as i32) * (1 as i32)) as i32) + (((*self.digit2()? as i32) * (10 as i32)) as i32)) as i32) + (((*self.digit3()? as i32) * (100 as i32)) as i32)) as i32) + (((*self.digit4()? as i32) * (1000 as i32)) as i32)) as i32) + (((*self.digit5()? as i32) * (10000 as i32)) as i32)) as i32) + (((*self.digit6()? as i32) * (100000 as i32)) as i32)) as i32) + (((*self.digit7()? as i32) * (1000000 as i32)) as i32)) as i32) + (((*self.digit8()? as i32) * (10000000 as i32)) as i32))) as i32;
        Ok(self.as_int.borrow())
    }
    pub fn as_str(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_as_str.get() {
            return Ok(self.as_str.borrow());
        }
        self.f_as_str.set(true);
        *self.as_str.borrow_mut() = format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", format!("{}{}", self.digit8()?.to_string(), self.digit7()?.to_string()), self.digit6()?.to_string()), self.digit5()?.to_string()), self.digit4()?.to_string()), self.digit3()?.to_string()), self.digit2()?.to_string()), self.digit1()?.to_string()).to_string();
        Ok(self.as_str.borrow())
    }
    pub fn digit1(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit1.get() {
            return Ok(self.digit1.borrow());
        }
        self.f_digit1.set(true);
        *self.digit1.borrow_mut() = ((((((*self.b4() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit1.borrow())
    }
    pub fn digit2(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit2.get() {
            return Ok(self.digit2.borrow());
        }
        self.f_digit2.set(true);
        *self.digit2.borrow_mut() = (((*self.b4() as u8) & (15 as u8))) as i32;
        Ok(self.digit2.borrow())
    }
    pub fn digit3(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit3.get() {
            return Ok(self.digit3.borrow());
        }
        self.f_digit3.set(true);
        *self.digit3.borrow_mut() = ((((((*self.b3() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit3.borrow())
    }
    pub fn digit4(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit4.get() {
            return Ok(self.digit4.borrow());
        }
        self.f_digit4.set(true);
        *self.digit4.borrow_mut() = (((*self.b3() as u8) & (15 as u8))) as i32;
        Ok(self.digit4.borrow())
    }
    pub fn digit5(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit5.get() {
            return Ok(self.digit5.borrow());
        }
        self.f_digit5.set(true);
        *self.digit5.borrow_mut() = ((((((*self.b2() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit5.borrow())
    }
    pub fn digit6(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit6.get() {
            return Ok(self.digit6.borrow());
        }
        self.f_digit6.set(true);
        *self.digit6.borrow_mut() = (((*self.b2() as u8) & (15 as u8))) as i32;
        Ok(self.digit6.borrow())
    }
    pub fn digit7(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit7.get() {
            return Ok(self.digit7.borrow());
        }
        self.f_digit7.set(true);
        *self.digit7.borrow_mut() = ((((((*self.b1() as u8) & (240 as u8)) as u64) >> 4) as i32)) as i32;
        Ok(self.digit7.borrow())
    }
    pub fn digit8(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_digit8.get() {
            return Ok(self.digit8.borrow());
        }
        self.f_digit8.set(true);
        *self.digit8.borrow_mut() = (((*self.b1() as u8) & (15 as u8))) as i32;
        Ok(self.digit8.borrow())
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn b1(&self) -> Ref<'_, u8> {
        self.b1.borrow()
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn b2(&self) -> Ref<'_, u8> {
        self.b2.borrow()
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn b3(&self) -> Ref<'_, u8> {
        self.b3.borrow()
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn b4(&self) -> Ref<'_, u8> {
        self.b4.borrow()
    }
}
impl BcdUserTypeLe_RtlObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
