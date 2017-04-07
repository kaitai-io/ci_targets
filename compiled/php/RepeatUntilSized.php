<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatUntilSized extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\RepeatUntilSized $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m__raw_records = [];
        $this->_m_records = [];
        do {
            $_buf = $this->_io->readBytes(5);
            $this->_m__raw_records[] = $_buf;
            $io = new \Kaitai\Struct\Stream($_buf);
            $_ = new \Kaitai\Struct\Tests\RepeatUntilSized\Record($io, $this, $this->_root);
            $this->_m_records[] = $_;
        } while (!($_->marker() == 170));
    }
    protected $_m_records;
    protected $_m__raw_records;
    public function records() { return $this->_m_records; }
    public function _raw_records() { return $this->_m__raw_records; }
}

namespace Kaitai\Struct\Tests\RepeatUntilSized;

class Record extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\RepeatUntilSized $parent = null, \Kaitai\Struct\Tests\RepeatUntilSized $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_marker = $this->_io->readU1();
        $this->_m_body = $this->_io->readU4le();
    }
    protected $_m_marker;
    protected $_m_body;
    public function marker() { return $this->_m_marker; }
    public function body() { return $this->_m_body; }
}
