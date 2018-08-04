// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class CastNested : KaitaiStruct
    {
        public static CastNested FromFile(string fileName)
        {
            return new CastNested(new KaitaiStream(fileName));
        }

        public CastNested(KaitaiStream p__io, KaitaiStruct p__parent = null, CastNested p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_opcodes0Str = false;
            f_opcodes0StrValue = false;
            f_opcodes1Int = false;
            f_opcodes1IntValue = false;
            _read();
        }
        private void _read()
        {
            _opcodes = new List<Opcode>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _opcodes.Add(new Opcode(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream p__io, CastNested p__parent = null, CastNested p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
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
            public partial class Intval : KaitaiStruct
            {
                public static Intval FromFile(string fileName)
                {
                    return new Intval(new KaitaiStream(fileName));
                }

                public Intval(KaitaiStream p__io, CastNested.Opcode p__parent = null, CastNested p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = m_io.ReadU1();
                }
                private byte _value;
                private CastNested m_root;
                private CastNested.Opcode m_parent;
                public byte Value { get { return _value; } }
                public CastNested M_Root { get { return m_root; } }
                public CastNested.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, CastNested.Opcode p__parent = null, CastNested p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _value;
                private CastNested m_root;
                private CastNested.Opcode m_parent;
                public string Value { get { return _value; } }
                public CastNested M_Root { get { return m_root; } }
                public CastNested.Opcode M_Parent { get { return m_parent; } }
            }
            private byte _code;
            private KaitaiStruct _body;
            private CastNested m_root;
            private CastNested m_parent;
            public byte Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public CastNested M_Root { get { return m_root; } }
            public CastNested M_Parent { get { return m_parent; } }
        }
        private bool f_opcodes0Str;
        private CastNested.Opcode.Strval _opcodes0Str;
        public CastNested.Opcode.Strval Opcodes0Str
        {
            get
            {
                if (f_opcodes0Str)
                    return _opcodes0Str;
                _opcodes0Str = (CastNested.Opcode.Strval) (((CastNested.Opcode.Strval) (Opcodes[0].Body)));
                f_opcodes0Str = true;
                return _opcodes0Str;
            }
        }
        private bool f_opcodes0StrValue;
        private string _opcodes0StrValue;
        public string Opcodes0StrValue
        {
            get
            {
                if (f_opcodes0StrValue)
                    return _opcodes0StrValue;
                _opcodes0StrValue = (string) (((CastNested.Opcode.Strval) (Opcodes[0].Body)).Value);
                f_opcodes0StrValue = true;
                return _opcodes0StrValue;
            }
        }
        private bool f_opcodes1Int;
        private CastNested.Opcode.Intval _opcodes1Int;
        public CastNested.Opcode.Intval Opcodes1Int
        {
            get
            {
                if (f_opcodes1Int)
                    return _opcodes1Int;
                _opcodes1Int = (CastNested.Opcode.Intval) (((CastNested.Opcode.Intval) (Opcodes[1].Body)));
                f_opcodes1Int = true;
                return _opcodes1Int;
            }
        }
        private bool f_opcodes1IntValue;
        private byte _opcodes1IntValue;
        public byte Opcodes1IntValue
        {
            get
            {
                if (f_opcodes1IntValue)
                    return _opcodes1IntValue;
                _opcodes1IntValue = (byte) (((CastNested.Opcode.Intval) (Opcodes[1].Body)).Value);
                f_opcodes1IntValue = true;
                return _opcodes1IntValue;
            }
        }
        private List<Opcode> _opcodes;
        private CastNested m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public CastNested M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
