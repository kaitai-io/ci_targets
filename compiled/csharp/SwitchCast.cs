// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchCast : KaitaiStruct
    {
        public static SwitchCast FromFile(string fileName)
        {
            return new SwitchCast(new KaitaiStream(fileName));
        }

        public SwitchCast(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchCast p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_firstObj = false;
            f_secondVal = false;
            f_errCast = false;
            _read();
        }
        private void _read() {
            _opcodes = new List<Opcode>();
            while (!m_io.IsEof) {
                _opcodes.Add(new Opcode(m_io, this, m_root));
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream p__io, SwitchCast p__parent = null, SwitchCast p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _code = m_io.ReadU1();
                switch (Code) {
                case 73: {
                    _body = new Intval(m_io, this, m_root);
                    break;
                }
                case 83: {
                    _body = new Strval(m_io, this, m_root);
                    break;
                }
                }
            }
            private byte _code;
            private KaitaiStruct _body;
            private SwitchCast m_root;
            private SwitchCast m_parent;
            public byte Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchCast M_Root { get { return m_root; } }
            public SwitchCast M_Parent { get { return m_parent; } }
        }
        public partial class Intval : KaitaiStruct
        {
            public static Intval FromFile(string fileName)
            {
                return new Intval(new KaitaiStream(fileName));
            }

            public Intval(KaitaiStream p__io, SwitchCast.Opcode p__parent = null, SwitchCast p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _value = m_io.ReadU1();
            }
            private byte _value;
            private SwitchCast m_root;
            private SwitchCast.Opcode m_parent;
            public byte Value { get { return _value; } }
            public SwitchCast M_Root { get { return m_root; } }
            public SwitchCast.Opcode M_Parent { get { return m_parent; } }
        }
        public partial class Strval : KaitaiStruct
        {
            public static Strval FromFile(string fileName)
            {
                return new Strval(new KaitaiStream(fileName));
            }

            public Strval(KaitaiStream p__io, SwitchCast.Opcode p__parent = null, SwitchCast p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
            }
            private string _value;
            private SwitchCast m_root;
            private SwitchCast.Opcode m_parent;
            public string Value { get { return _value; } }
            public SwitchCast M_Root { get { return m_root; } }
            public SwitchCast.Opcode M_Parent { get { return m_parent; } }
        }
        private bool f_firstObj;
        private SwitchCast.Strval _firstObj;
        public SwitchCast.Strval FirstObj
        {
            get
            {
                if (f_firstObj)
                    return _firstObj;
                _firstObj = (SwitchCast.Strval) (((Strval) (Opcodes[0].Body)));
                f_firstObj = true;
                return _firstObj;
            }
        }
        private bool f_secondVal;
        private byte _secondVal;
        public byte SecondVal
        {
            get
            {
                if (f_secondVal)
                    return _secondVal;
                _secondVal = (byte) (((Intval) (Opcodes[1].Body)).Value);
                f_secondVal = true;
                return _secondVal;
            }
        }
        private bool f_errCast;
        private SwitchCast.Strval _errCast;
        public SwitchCast.Strval ErrCast
        {
            get
            {
                if (f_errCast)
                    return _errCast;
                _errCast = (SwitchCast.Strval) (((Strval) (Opcodes[2].Body)));
                f_errCast = true;
                return _errCast;
            }
        }
        private List<Opcode> _opcodes;
        private SwitchCast m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchCast M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
