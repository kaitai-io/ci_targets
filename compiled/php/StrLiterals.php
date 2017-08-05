<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class StrLiterals extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrLiterals $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
    }
    protected $_m_octalEatup2;
    public function octalEatup2() {
        if ($this->_m_octalEatup2 !== null)
            return $this->_m_octalEatup2;
        $this->_m_octalEatup2 = "\0022";
        return $this->_m_octalEatup2;
    }
    protected $_m_backslashes;
    public function backslashes() {
        if ($this->_m_backslashes !== null)
            return $this->_m_backslashes;
        $this->_m_backslashes = "\\\\\\";
        return $this->_m_backslashes;
    }
    protected $_m_octalEatup;
    public function octalEatup() {
        if ($this->_m_octalEatup !== null)
            return $this->_m_octalEatup;
        $this->_m_octalEatup = "\00022";
        return $this->_m_octalEatup;
    }
    protected $_m_doubleQuotes;
    public function doubleQuotes() {
        if ($this->_m_doubleQuotes !== null)
            return $this->_m_doubleQuotes;
        $this->_m_doubleQuotes = "\"\"\"";
        return $this->_m_doubleQuotes;
    }
    protected $_m_complexStr;
    public function complexStr() {
        if ($this->_m_complexStr !== null)
            return $this->_m_complexStr;
        $this->_m_complexStr = "\000\001\002\007\010\n\r\t\v\f\e=\007\n\$\u{263b}";
        return $this->_m_complexStr;
    }
}
