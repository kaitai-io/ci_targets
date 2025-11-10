<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NameClashImportVsInst extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NameClashImportVsInst $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        public function integers() {
            if ($this->_m_integers !== null)
                return $this->_m_integers;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_integers = new \Kaitai\Struct\Tests\Integers($this->_io);
            $this->_io->seek($_pos);
            return $this->_m_integers;
        }
        public function std() {
            if ($this->_m_std !== null)
                return $this->_m_std;
            $this->_m_std = 1 + 2;
            return $this->_m_std;
        }
        protected $_m_integers;
        protected $_m_std;
    }
}
