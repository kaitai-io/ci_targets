<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessRepeatUsertypeDynargRotate extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_blocksRol = [];
            $this->_m__raw__raw_blocksRol = [];
            $this->_m_blocksRol = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw__raw_blocksRol[] = $this->_io->readBytes(3);
                $this->_m__raw_blocksRol[] = \Kaitai\Struct\Stream::processRotateLeft(end($this->_m__raw__raw_blocksRol), $this->_io()->pos() - 4 * $i, 1);
                $_io__raw_blocksRol = new \Kaitai\Struct\Stream(end($this->_m__raw_blocksRol));
                $this->_m_blocksRol[] = new \Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate\Block($_io__raw_blocksRol, $this, $this->_root);
            }
            $this->_m__raw_blocksRor = [];
            $this->_m__raw__raw_blocksRor = [];
            $this->_m_blocksRor = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw__raw_blocksRor[] = $this->_io->readBytes(3);
                $this->_m__raw_blocksRor[] = \Kaitai\Struct\Stream::processRotateLeft(end($this->_m__raw__raw_blocksRor), 8 - (($this->_io()->pos() - 6) - 4 * $i), 1);
                $_io__raw_blocksRor = new \Kaitai\Struct\Stream(end($this->_m__raw_blocksRor));
                $this->_m_blocksRor[] = new \Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate\Block($_io__raw_blocksRor, $this, $this->_root);
            }
            $this->_m_blocksB = new \Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate\BlocksBWrapper($this->_io, $this, $this->_root);
        }
        public function blocksRol() { return $this->_m_blocksRol; }
        public function blocksRor() { return $this->_m_blocksRor; }
        public function blocksB() { return $this->_m_blocksB; }
        public function _raw_blocksRol() { return $this->_m__raw_blocksRol; }
        public function _raw__raw_blocksRol() { return $this->_m__raw__raw_blocksRol; }
        public function _raw_blocksRor() { return $this->_m__raw_blocksRor; }
        public function _raw__raw_blocksRor() { return $this->_m__raw__raw_blocksRor; }
        protected $_m_blocksRol;
        protected $_m_blocksRor;
        protected $_m_blocksB;
        protected $_m__raw_blocksRol;
        protected $_m__raw__raw_blocksRol;
        protected $_m__raw_blocksRor;
        protected $_m__raw__raw_blocksRor;
    }
}

namespace Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate {
    class Block extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_a = $this->_io->readU2le();
        }
        public function a() { return $this->_m_a; }
        protected $_m_a;
    }
}

namespace Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate {
    class BlocksBWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate $_parent = null, ?\Kaitai\Struct\Tests\ProcessRepeatUsertypeDynargRotate $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_dummy = $this->_io->readU1();
        }
        public function blocksRol0B() {
            if ($this->_m_blocksRol0B !== null)
                return $this->_m_blocksRol0B;
            $io = $this->_parent()->blocksRol()[0]->_io();
            $_pos = $io->pos();
            $io->seek(2);
            $this->_m_blocksRol0B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocksRol0B;
        }
        public function blocksRol1B() {
            if ($this->_m_blocksRol1B !== null)
                return $this->_m_blocksRol1B;
            $io = $this->_parent()->blocksRol()[1]->_io();
            $_pos = $io->pos();
            $io->seek(2);
            $this->_m_blocksRol1B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocksRol1B;
        }
        public function blocksRor0B() {
            if ($this->_m_blocksRor0B !== null)
                return $this->_m_blocksRor0B;
            $io = $this->_parent()->blocksRor()[0]->_io();
            $_pos = $io->pos();
            $io->seek(2);
            $this->_m_blocksRor0B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocksRor0B;
        }
        public function blocksRor1B() {
            if ($this->_m_blocksRor1B !== null)
                return $this->_m_blocksRor1B;
            $io = $this->_parent()->blocksRor()[1]->_io();
            $_pos = $io->pos();
            $io->seek(2);
            $this->_m_blocksRor1B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocksRor1B;
        }
        public function blocksRor2B() {
            if ($this->_m_blocksRor2B !== null)
                return $this->_m_blocksRor2B;
            $io = $this->_parent()->blocksRor()[2]->_io();
            $_pos = $io->pos();
            $io->seek(2);
            $this->_m_blocksRor2B = $io->readU1();
            $io->seek($_pos);
            return $this->_m_blocksRor2B;
        }
        public function dummy() { return $this->_m_dummy; }
        protected $_m_blocksRol0B;
        protected $_m_blocksRol1B;
        protected $_m_blocksRor0B;
        protected $_m_blocksRor1B;
        protected $_m_blocksRor2B;
        protected $_m_dummy;
    }
}
