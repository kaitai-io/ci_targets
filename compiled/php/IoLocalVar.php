<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class IoLocalVar extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\IoLocalVar $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_skip = $this->_io->readBytes(20);
            if ($this->messUp()->_io()->pos() < 0) {
                $this->_m_alwaysNull = $this->_io->readU1();
            }
            $this->_m_followup = $this->_io->readU1();
        }
        protected $_m_messUp;
        public function messUp() {
            if ($this->_m_messUp !== null)
                return $this->_m_messUp;
            $io = $this->_root()->_io();
            $_pos = $io->pos();
            $io->seek(8);
            switch (2) {
                case 1:
                    $this->_m__raw_messUp = $io->readBytes(2);
                    $_io__raw_messUp = new \Kaitai\Struct\Stream($this->_m__raw_messUp);
                    $this->_m_messUp = new \Kaitai\Struct\Tests\IoLocalVar\Dummy($_io__raw_messUp, $this, $this->_root);
                    break;
                case 2:
                    $this->_m__raw_messUp = $io->readBytes(2);
                    $_io__raw_messUp = new \Kaitai\Struct\Stream($this->_m__raw_messUp);
                    $this->_m_messUp = new \Kaitai\Struct\Tests\IoLocalVar\Dummy($_io__raw_messUp, $this, $this->_root);
                    break;
                default:
                    $this->_m_messUp = $io->readBytes(2);
                    break;
            }
            $io->seek($_pos);
            return $this->_m_messUp;
        }
        protected $_m_skip;
        protected $_m_alwaysNull;
        protected $_m_followup;
        protected $_m__raw_messUp;
        public function skip() { return $this->_m_skip; }
        public function alwaysNull() { return $this->_m_alwaysNull; }
        public function followup() { return $this->_m_followup; }
        public function _raw_messUp() { return $this->_m__raw_messUp; }
    }
}

namespace Kaitai\Struct\Tests\IoLocalVar {
    class Dummy extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IoLocalVar $_parent = null, \Kaitai\Struct\Tests\IoLocalVar $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}
