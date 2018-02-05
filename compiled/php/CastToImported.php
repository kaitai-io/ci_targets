<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class CastToImported extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CastToImported $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = new \Kaitai\Struct\Tests\HelloWorld($this->_io);
    }
    protected $_m_oneCasted;
    public function oneCasted() {
        if ($this->_m_oneCasted !== null)
            return $this->_m_oneCasted;
        $this->_m_oneCasted = $this->one();
        return $this->_m_oneCasted;
    }
    protected $_m_one;
    public function one() { return $this->_m_one; }
}
