<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class PositionInSeq extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\PositionInSeq $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_numbers = [];
        $n = $this->header()->qtyNumbers();
        for ($i = 0; $i < $n; $i++) {
            $this->_m_numbers[] = $this->_io->readU1();
        }
    }
    protected $_m_header;
    public function header() {
        if ($this->_m_header !== null)
            return $this->_m_header;
        $_pos = $this->_io->pos();
        $this->_io->seek(16);
        $this->_m_header = new \Kaitai\Struct\Tests\PositionInSeq\HeaderObj($this->_io, $this, $this->_root);
        $this->_io->seek($_pos);
        return $this->_m_header;
    }
    protected $_m_numbers;
    public function numbers() { return $this->_m_numbers; }
}

namespace Kaitai\Struct\Tests\PositionInSeq;

class HeaderObj extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\PositionInSeq $parent = null, \Kaitai\Struct\Tests\PositionInSeq $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_qtyNumbers = $this->_io->readU4le();
    }
    protected $_m_qtyNumbers;
    public function qtyNumbers() { return $this->_m_qtyNumbers; }
}
