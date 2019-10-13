<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ExprBytesOps extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprBytesOps $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = $this->_io->readBytes(3);
    }
    protected $_m_twoLast;
    public function twoLast() {
        if ($this->_m_twoLast !== null)
            return $this->_m_twoLast;
        $this->_m_twoLast = $this->two()[count($this->two()) - 1];
        return $this->_m_twoLast;
    }
    protected $_m_twoMax;
    public function twoMax() {
        if ($this->_m_twoMax !== null)
            return $this->_m_twoMax;
        $this->_m_twoMax = max($this->two());
        return $this->_m_twoMax;
    }
    protected $_m_oneMin;
    public function oneMin() {
        if ($this->_m_oneMin !== null)
            return $this->_m_oneMin;
        $this->_m_oneMin = min($this->one());
        return $this->_m_oneMin;
    }
    protected $_m_oneFirst;
    public function oneFirst() {
        if ($this->_m_oneFirst !== null)
            return $this->_m_oneFirst;
        $this->_m_oneFirst = $this->one()[0];
        return $this->_m_oneFirst;
    }
    protected $_m_oneMid;
    public function oneMid() {
        if ($this->_m_oneMid !== null)
            return $this->_m_oneMid;
        $this->_m_oneMid = $this->one()[1];
        return $this->_m_oneMid;
    }
    protected $_m_two;
    public function two() {
        if ($this->_m_two !== null)
            return $this->_m_two;
        $this->_m_two = "\x41\x43\x4B";
        return $this->_m_two;
    }
    protected $_m_twoMin;
    public function twoMin() {
        if ($this->_m_twoMin !== null)
            return $this->_m_twoMin;
        $this->_m_twoMin = min($this->two());
        return $this->_m_twoMin;
    }
    protected $_m_twoMid;
    public function twoMid() {
        if ($this->_m_twoMid !== null)
            return $this->_m_twoMid;
        $this->_m_twoMid = $this->two()[1];
        return $this->_m_twoMid;
    }
    protected $_m_oneSize;
    public function oneSize() {
        if ($this->_m_oneSize !== null)
            return $this->_m_oneSize;
        $this->_m_oneSize = strlen($this->one());
        return $this->_m_oneSize;
    }
    protected $_m_oneLast;
    public function oneLast() {
        if ($this->_m_oneLast !== null)
            return $this->_m_oneLast;
        $this->_m_oneLast = $this->one()[count($this->one()) - 1];
        return $this->_m_oneLast;
    }
    protected $_m_twoSize;
    public function twoSize() {
        if ($this->_m_twoSize !== null)
            return $this->_m_twoSize;
        $this->_m_twoSize = strlen($this->two());
        return $this->_m_twoSize;
    }
    protected $_m_oneMax;
    public function oneMax() {
        if ($this->_m_oneMax !== null)
            return $this->_m_oneMax;
        $this->_m_oneMax = max($this->one());
        return $this->_m_oneMax;
    }
    protected $_m_twoFirst;
    public function twoFirst() {
        if ($this->_m_twoFirst !== null)
            return $this->_m_twoFirst;
        $this->_m_twoFirst = $this->two()[0];
        return $this->_m_twoFirst;
    }
    protected $_m_one;
    public function one() { return $this->_m_one; }
}
