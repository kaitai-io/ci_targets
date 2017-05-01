<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class InstanceIoUser extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\InstanceIoUser $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_qtyEntries = $this->_io->readU4le();
        $this->_m_entries = [];
        $n = $this->qtyEntries();
        for ($i = 0; $i < $n; $i++) {
            $this->_m_entries[] = new \Kaitai\Struct\Tests\InstanceIoUser\Entry($this->_io, $this, $this->_root);
        }
        $this->_m__raw_strings = $this->_io->readBytesFull();
        $io = new \Kaitai\Struct\Stream($this->_m__raw_strings);
        $this->_m_strings = new \Kaitai\Struct\Tests\InstanceIoUser\StringsObj($io, $this, $this->_root);
    }
    protected $_m_qtyEntries;
    protected $_m_entries;
    protected $_m_strings;
    protected $_m__raw_strings;
    public function qtyEntries() { return $this->_m_qtyEntries; }
    public function entries() { return $this->_m_entries; }
    public function strings() { return $this->_m_strings; }
    public function _raw_strings() { return $this->_m__raw_strings; }
}

namespace Kaitai\Struct\Tests\InstanceIoUser;

class Entry extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\InstanceIoUser $parent = null, \Kaitai\Struct\Tests\InstanceIoUser $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_nameOfs = $this->_io->readU4le();
        $this->_m_value = $this->_io->readU4le();
    }
    protected $_m_name;
    public function name() {
        if ($this->_m_name !== null)
            return $this->_m_name;
        $io = $this->_root()->strings()->_io();
        $_pos = $io->pos();
        $io->seek($this->nameOfs());
        $this->_m_name = \Kaitai\Struct\Stream::bytesToStr($io->readBytesTerm(0, false, true, true), "UTF-8");
        $io->seek($_pos);
        return $this->_m_name;
    }
    protected $_m_nameOfs;
    protected $_m_value;
    public function nameOfs() { return $this->_m_nameOfs; }
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\InstanceIoUser;

class StringsObj extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\InstanceIoUser $parent = null, \Kaitai\Struct\Tests\InstanceIoUser $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_str = [];
        while (!$this->_io->isEof()) {
            $this->_m_str[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
        }
    }
    protected $_m_str;
    public function str() { return $this->_m_str; }
}
