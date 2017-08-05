<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class BcdUserTypeBe extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BcdUserTypeBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m__raw_ltr = $this->_io->readBytes(4);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_ltr);
        $this->_m_ltr = new \Kaitai\Struct\Tests\BcdUserTypeBe\LtrObj($io, $this, $this->_root);
        $this->_m__raw_rtl = $this->_io->readBytes(4);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_rtl);
        $this->_m_rtl = new \Kaitai\Struct\Tests\BcdUserTypeBe\RtlObj($io, $this, $this->_root);
        $this->_m__raw_leadingZeroLtr = $this->_io->readBytes(4);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_leadingZeroLtr);
        $this->_m_leadingZeroLtr = new \Kaitai\Struct\Tests\BcdUserTypeBe\LeadingZeroLtrObj($io, $this, $this->_root);
    }
    protected $_m_ltr;
    protected $_m_rtl;
    protected $_m_leadingZeroLtr;
    protected $_m__raw_ltr;
    protected $_m__raw_rtl;
    protected $_m__raw_leadingZeroLtr;
    public function ltr() { return $this->_m_ltr; }
    public function rtl() { return $this->_m_rtl; }
    public function leadingZeroLtr() { return $this->_m_leadingZeroLtr; }
    public function _raw_ltr() { return $this->_m__raw_ltr; }
    public function _raw_rtl() { return $this->_m__raw_rtl; }
    public function _raw_leadingZeroLtr() { return $this->_m__raw_leadingZeroLtr; }
}

namespace Kaitai\Struct\Tests\BcdUserTypeBe;

class LtrObj extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\BcdUserTypeBe $_parent = null, \Kaitai\Struct\Tests\BcdUserTypeBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_b1 = $this->_io->readU1();
        $this->_m_b2 = $this->_io->readU1();
        $this->_m_b3 = $this->_io->readU1();
        $this->_m_b4 = $this->_io->readU1();
    }
    protected $_m_asInt;
    public function asInt() {
        if ($this->_m_asInt !== null)
            return $this->_m_asInt;
        $this->_m_asInt = (((((((($this->digit8() * 1) + ($this->digit7() * 10)) + ($this->digit6() * 100)) + ($this->digit5() * 1000)) + ($this->digit4() * 10000)) + ($this->digit3() * 100000)) + ($this->digit2() * 1000000)) + ($this->digit1() * 10000000));
        return $this->_m_asInt;
    }
    protected $_m_digit2;
    public function digit2() {
        if ($this->_m_digit2 !== null)
            return $this->_m_digit2;
        $this->_m_digit2 = ($this->b1() & 15);
        return $this->_m_digit2;
    }
    protected $_m_digit4;
    public function digit4() {
        if ($this->_m_digit4 !== null)
            return $this->_m_digit4;
        $this->_m_digit4 = ($this->b2() & 15);
        return $this->_m_digit4;
    }
    protected $_m_digit3;
    public function digit3() {
        if ($this->_m_digit3 !== null)
            return $this->_m_digit3;
        $this->_m_digit3 = (($this->b2() & 240) >> 4);
        return $this->_m_digit3;
    }
    protected $_m_digit5;
    public function digit5() {
        if ($this->_m_digit5 !== null)
            return $this->_m_digit5;
        $this->_m_digit5 = (($this->b3() & 240) >> 4);
        return $this->_m_digit5;
    }
    protected $_m_digit8;
    public function digit8() {
        if ($this->_m_digit8 !== null)
            return $this->_m_digit8;
        $this->_m_digit8 = ($this->b4() & 15);
        return $this->_m_digit8;
    }
    protected $_m_digit6;
    public function digit6() {
        if ($this->_m_digit6 !== null)
            return $this->_m_digit6;
        $this->_m_digit6 = ($this->b3() & 15);
        return $this->_m_digit6;
    }
    protected $_m_asStr;
    public function asStr() {
        if ($this->_m_asStr !== null)
            return $this->_m_asStr;
        $this->_m_asStr = strval($this->digit1()) . strval($this->digit2()) . strval($this->digit3()) . strval($this->digit4()) . strval($this->digit5()) . strval($this->digit6()) . strval($this->digit7()) . strval($this->digit8());
        return $this->_m_asStr;
    }
    protected $_m_digit1;
    public function digit1() {
        if ($this->_m_digit1 !== null)
            return $this->_m_digit1;
        $this->_m_digit1 = (($this->b1() & 240) >> 4);
        return $this->_m_digit1;
    }
    protected $_m_digit7;
    public function digit7() {
        if ($this->_m_digit7 !== null)
            return $this->_m_digit7;
        $this->_m_digit7 = (($this->b4() & 240) >> 4);
        return $this->_m_digit7;
    }
    protected $_m_b1;
    protected $_m_b2;
    protected $_m_b3;
    protected $_m_b4;
    public function b1() { return $this->_m_b1; }
    public function b2() { return $this->_m_b2; }
    public function b3() { return $this->_m_b3; }
    public function b4() { return $this->_m_b4; }
}

namespace Kaitai\Struct\Tests\BcdUserTypeBe;

class RtlObj extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\BcdUserTypeBe $_parent = null, \Kaitai\Struct\Tests\BcdUserTypeBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_b1 = $this->_io->readU1();
        $this->_m_b2 = $this->_io->readU1();
        $this->_m_b3 = $this->_io->readU1();
        $this->_m_b4 = $this->_io->readU1();
    }
    protected $_m_asInt;
    public function asInt() {
        if ($this->_m_asInt !== null)
            return $this->_m_asInt;
        $this->_m_asInt = (((((((($this->digit1() * 1) + ($this->digit2() * 10)) + ($this->digit3() * 100)) + ($this->digit4() * 1000)) + ($this->digit5() * 10000)) + ($this->digit6() * 100000)) + ($this->digit7() * 1000000)) + ($this->digit8() * 10000000));
        return $this->_m_asInt;
    }
    protected $_m_digit2;
    public function digit2() {
        if ($this->_m_digit2 !== null)
            return $this->_m_digit2;
        $this->_m_digit2 = ($this->b1() & 15);
        return $this->_m_digit2;
    }
    protected $_m_digit4;
    public function digit4() {
        if ($this->_m_digit4 !== null)
            return $this->_m_digit4;
        $this->_m_digit4 = ($this->b2() & 15);
        return $this->_m_digit4;
    }
    protected $_m_digit3;
    public function digit3() {
        if ($this->_m_digit3 !== null)
            return $this->_m_digit3;
        $this->_m_digit3 = (($this->b2() & 240) >> 4);
        return $this->_m_digit3;
    }
    protected $_m_digit5;
    public function digit5() {
        if ($this->_m_digit5 !== null)
            return $this->_m_digit5;
        $this->_m_digit5 = (($this->b3() & 240) >> 4);
        return $this->_m_digit5;
    }
    protected $_m_digit8;
    public function digit8() {
        if ($this->_m_digit8 !== null)
            return $this->_m_digit8;
        $this->_m_digit8 = ($this->b4() & 15);
        return $this->_m_digit8;
    }
    protected $_m_digit6;
    public function digit6() {
        if ($this->_m_digit6 !== null)
            return $this->_m_digit6;
        $this->_m_digit6 = ($this->b3() & 15);
        return $this->_m_digit6;
    }
    protected $_m_asStr;
    public function asStr() {
        if ($this->_m_asStr !== null)
            return $this->_m_asStr;
        $this->_m_asStr = strval($this->digit8()) . strval($this->digit7()) . strval($this->digit6()) . strval($this->digit5()) . strval($this->digit4()) . strval($this->digit3()) . strval($this->digit2()) . strval($this->digit1());
        return $this->_m_asStr;
    }
    protected $_m_digit1;
    public function digit1() {
        if ($this->_m_digit1 !== null)
            return $this->_m_digit1;
        $this->_m_digit1 = (($this->b1() & 240) >> 4);
        return $this->_m_digit1;
    }
    protected $_m_digit7;
    public function digit7() {
        if ($this->_m_digit7 !== null)
            return $this->_m_digit7;
        $this->_m_digit7 = (($this->b4() & 240) >> 4);
        return $this->_m_digit7;
    }
    protected $_m_b1;
    protected $_m_b2;
    protected $_m_b3;
    protected $_m_b4;
    public function b1() { return $this->_m_b1; }
    public function b2() { return $this->_m_b2; }
    public function b3() { return $this->_m_b3; }
    public function b4() { return $this->_m_b4; }
}

namespace Kaitai\Struct\Tests\BcdUserTypeBe;

class LeadingZeroLtrObj extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\BcdUserTypeBe $_parent = null, \Kaitai\Struct\Tests\BcdUserTypeBe $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_b1 = $this->_io->readU1();
        $this->_m_b2 = $this->_io->readU1();
        $this->_m_b3 = $this->_io->readU1();
        $this->_m_b4 = $this->_io->readU1();
    }
    protected $_m_asInt;
    public function asInt() {
        if ($this->_m_asInt !== null)
            return $this->_m_asInt;
        $this->_m_asInt = (((((((($this->digit8() * 1) + ($this->digit7() * 10)) + ($this->digit6() * 100)) + ($this->digit5() * 1000)) + ($this->digit4() * 10000)) + ($this->digit3() * 100000)) + ($this->digit2() * 1000000)) + ($this->digit1() * 10000000));
        return $this->_m_asInt;
    }
    protected $_m_digit2;
    public function digit2() {
        if ($this->_m_digit2 !== null)
            return $this->_m_digit2;
        $this->_m_digit2 = ($this->b1() & 15);
        return $this->_m_digit2;
    }
    protected $_m_digit4;
    public function digit4() {
        if ($this->_m_digit4 !== null)
            return $this->_m_digit4;
        $this->_m_digit4 = ($this->b2() & 15);
        return $this->_m_digit4;
    }
    protected $_m_digit3;
    public function digit3() {
        if ($this->_m_digit3 !== null)
            return $this->_m_digit3;
        $this->_m_digit3 = (($this->b2() & 240) >> 4);
        return $this->_m_digit3;
    }
    protected $_m_digit5;
    public function digit5() {
        if ($this->_m_digit5 !== null)
            return $this->_m_digit5;
        $this->_m_digit5 = (($this->b3() & 240) >> 4);
        return $this->_m_digit5;
    }
    protected $_m_digit8;
    public function digit8() {
        if ($this->_m_digit8 !== null)
            return $this->_m_digit8;
        $this->_m_digit8 = ($this->b4() & 15);
        return $this->_m_digit8;
    }
    protected $_m_digit6;
    public function digit6() {
        if ($this->_m_digit6 !== null)
            return $this->_m_digit6;
        $this->_m_digit6 = ($this->b3() & 15);
        return $this->_m_digit6;
    }
    protected $_m_asStr;
    public function asStr() {
        if ($this->_m_asStr !== null)
            return $this->_m_asStr;
        $this->_m_asStr = strval($this->digit1()) . strval($this->digit2()) . strval($this->digit3()) . strval($this->digit4()) . strval($this->digit5()) . strval($this->digit6()) . strval($this->digit7()) . strval($this->digit8());
        return $this->_m_asStr;
    }
    protected $_m_digit1;
    public function digit1() {
        if ($this->_m_digit1 !== null)
            return $this->_m_digit1;
        $this->_m_digit1 = (($this->b1() & 240) >> 4);
        return $this->_m_digit1;
    }
    protected $_m_digit7;
    public function digit7() {
        if ($this->_m_digit7 !== null)
            return $this->_m_digit7;
        $this->_m_digit7 = (($this->b4() & 240) >> 4);
        return $this->_m_digit7;
    }
    protected $_m_b1;
    protected $_m_b2;
    protected $_m_b3;
    protected $_m_b4;
    public function b1() { return $this->_m_b1; }
    public function b2() { return $this->_m_b2; }
    public function b3() { return $this->_m_b3; }
    public function b4() { return $this->_m_b4; }
}
