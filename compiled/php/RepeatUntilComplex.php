<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatUntilComplex extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\RepeatUntilComplex $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_first = [];
        do {
            $_ = new \Kaitai\Struct\Tests\RepeatUntilComplex\TypeU1($this->_io, $this, $this->_root);
            $this->_m_first[] = $_;
        } while (!($_->count() == 0));
        $this->_m_second = [];
        do {
            $_ = new \Kaitai\Struct\Tests\RepeatUntilComplex\TypeU2($this->_io, $this, $this->_root);
            $this->_m_second[] = $_;
        } while (!($_->count() == 0));
        $this->_m_third = [];
        do {
            $_ = $this->_io->readU1();
            $this->_m_third[] = $_;
        } while (!($_ == 0));
    }
    protected $_m_first;
    protected $_m_second;
    protected $_m_third;
    public function first() { return $this->_m_first; }
    public function second() { return $this->_m_second; }
    public function third() { return $this->_m_third; }
}

namespace Kaitai\Struct\Tests\RepeatUntilComplex;

class TypeU1 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\RepeatUntilComplex $parent = null, \Kaitai\Struct\Tests\RepeatUntilComplex $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_count = $this->_io->readU1();
        $this->_m_values = [];
        $n = $this->count();
        for ($i = 0; $i < $n; $i++) {
            $this->_m_values[] = $this->_io->readU1();
        }
    }
    protected $_m_count;
    protected $_m_values;
    public function count() { return $this->_m_count; }
    public function values() { return $this->_m_values; }
}

namespace Kaitai\Struct\Tests\RepeatUntilComplex;

class TypeU2 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\RepeatUntilComplex $parent = null, \Kaitai\Struct\Tests\RepeatUntilComplex $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_count = $this->_io->readU2le();
        $this->_m_values = [];
        $n = $this->count();
        for ($i = 0; $i < $n; $i++) {
            $this->_m_values[] = $this->_io->readU2le();
        }
    }
    protected $_m_count;
    protected $_m_values;
    public function count() { return $this->_m_count; }
    public function values() { return $this->_m_values; }
}
