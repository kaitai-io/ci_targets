<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ParamsDef extends \Kaitai\Struct\Struct {
        public function __construct(int $len, bool $hasTrailer, \Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ParamsDef $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_m_len = $len;
            $this->_m_hasTrailer = $hasTrailer;
            $this->_read();
        }

        private function _read() {
            $this->_m_buf = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->len()), "UTF-8");
            if ($this->hasTrailer()) {
                $this->_m_trailer = $this->_io->readU1();
            }
        }
        public function buf() { return $this->_m_buf; }
        public function trailer() { return $this->_m_trailer; }
        public function len() { return $this->_m_len; }
        public function hasTrailer() { return $this->_m_hasTrailer; }
        protected $_m_buf;
        protected $_m_trailer;
        protected $_m_len;
        protected $_m_hasTrailer;
    }
}
