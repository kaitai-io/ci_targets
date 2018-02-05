<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class CastToTop extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CastToTop $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
    }
    protected $_m_header;
    public function header() {
        if ($this->_m_header !== null)
            return $this->_m_header;
        $_pos = $this->_io->pos();
        $this->_io->seek(1);
        $this->_m_header = new \Kaitai\Struct\Tests\CastToTop($this->_io);
        $this->_io->seek($_pos);
        return $this->_m_header;
    }
    protected $_m_headerCasted;
    public function headerCasted() {
        if ($this->_m_headerCasted !== null)
            return $this->_m_headerCasted;
        $this->_m_headerCasted = $this->header();
        return $this->_m_headerCasted;
    }
    protected $_m_code;
    public function code() { return $this->_m_code; }
}
