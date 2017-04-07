<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class Expr1 extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\Expr1 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_lenOf1 = $this->_io->readU2le();
        $this->_m_str1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf1Mod()), "ASCII");
    }
    protected $_m_lenOf1Mod;
    public function lenOf1Mod() {
        if ($this->_m_lenOf1Mod !== null)
            return $this->_m_lenOf1Mod;
        $this->_m_lenOf1Mod = ($this->lenOf1() - 2);
        return $this->_m_lenOf1Mod;
    }
    protected $_m_str1Len;
    public function str1Len() {
        if ($this->_m_str1Len !== null)
            return $this->_m_str1Len;
        $this->_m_str1Len = strlen($this->str1());
        return $this->_m_str1Len;
    }
    protected $_m_lenOf1;
    protected $_m_str1;
    public function lenOf1() { return $this->_m_lenOf1; }
    public function str1() { return $this->_m_str1; }
}
