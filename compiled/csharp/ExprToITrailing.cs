// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

namespace Kaitai
{
    public partial class ExprToITrailing : KaitaiStruct
    {
        public static ExprToITrailing FromFile(string fileName)
        {
            return new ExprToITrailing(new KaitaiStream(fileName));
        }

        public ExprToITrailing(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprToITrailing p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_toIGarbage = false;
            f_toIR10 = false;
            f_toIR16 = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_toIGarbage;
        private int _toIGarbage;
        public int ToIGarbage
        {
            get
            {
                if (f_toIGarbage)
                    return _toIGarbage;
                f_toIGarbage = true;
                _toIGarbage = (int) (Convert.ToInt64("123_.^", 10));
                return _toIGarbage;
            }
        }
        private bool f_toIR10;
        private int _toIR10;
        public int ToIR10
        {
            get
            {
                if (f_toIR10)
                    return _toIR10;
                f_toIR10 = true;
                _toIR10 = (int) (Convert.ToInt64("9173abc", 10));
                return _toIR10;
            }
        }
        private bool f_toIR16;
        private int _toIR16;
        public int ToIR16
        {
            get
            {
                if (f_toIR16)
                    return _toIR16;
                f_toIR16 = true;
                _toIR16 = (int) (Convert.ToInt64("9173abc", 16));
                return _toIR16;
            }
        }
        private ExprToITrailing m_root;
        private KaitaiStruct m_parent;
        public ExprToITrailing M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
