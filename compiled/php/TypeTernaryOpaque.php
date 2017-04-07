<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class TypeTernaryOpaque extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\TypeTernaryOpaque $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        if (!$this->isHack()) {
            $this->_m__raw_difWoHack = $this->_io->readBytes(12);
            $io = new \Kaitai\Struct\Stream($this->_m__raw_difWoHack);
            $this->_m_difWoHack = new \Kaitai\Struct\Tests\TermStrz($io);
        }
        if ($this->isHack()) {
            $this->_m__raw__raw_difWithHack = $this->_io->readBytes(12);
            $this->_m__raw_difWithHack = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_difWithHack, 3);
            $io = new \Kaitai\Struct\Stream($this->_m__raw_difWithHack);
            $this->_m_difWithHack = new \Kaitai\Struct\Tests\TermStrz($io);
        }
    }
    protected $_m_isHack;
    public function isHack() {
        if ($this->_m_isHack !== null)
            return $this->_m_isHack;
        $this->_m_isHack = false;
        return $this->_m_isHack;
    }
    protected $_m_dif;
    public function dif() {
        if ($this->_m_dif !== null)
            return $this->_m_dif;
        $this->_m_dif = (!$this->isHack() ? $this->difWoHack() : $this->difWithHack());
        return $this->_m_dif;
    }
    protected $_m_difWoHack;
    protected $_m_difWithHack;
    protected $_m__raw_difWoHack;
    protected $_m__raw__raw_difWithHack;
    protected $_m__raw_difWithHack;
    public function difWoHack() { return $this->_m_difWoHack; }
    public function difWithHack() { return $this->_m_difWithHack; }
    public function _raw_difWoHack() { return $this->_m__raw_difWoHack; }
    public function _raw__raw_difWithHack() { return $this->_m__raw__raw_difWithHack; }
    public function _raw_difWithHack() { return $this->_m__raw_difWithHack; }
}
