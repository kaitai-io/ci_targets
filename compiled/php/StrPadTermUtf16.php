<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrPadTermUtf16 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\StrPadTermUtf16 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_strTerm = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminateMulti($this->_io->readBytes(10), "\x00\x00", false), "UTF-16LE");
            $this->_m_strTermInclude = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminateMulti($this->_io->readBytes(10), "\x00\x00", true), "UTF-16LE");
            $this->_m_strTermAndPad = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminateMulti(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(9), 43), "\x00\x00", false), "UTF-16LE");
        }
        protected $_m_strTerm;
        protected $_m_strTermInclude;
        protected $_m_strTermAndPad;
        public function strTerm() { return $this->_m_strTerm; }
        public function strTermInclude() { return $this->_m_strTermInclude; }
        public function strTermAndPad() { return $this->_m_strTermAndPad; }
    }
}
