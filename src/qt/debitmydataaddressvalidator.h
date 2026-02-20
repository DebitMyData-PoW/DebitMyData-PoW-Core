// Copyright (c) 2011-2020 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef DEBITMYDATA_QT_DEBITMYDATAADDRESSVALIDATOR_H
#define DEBITMYDATA_QT_DEBITMYDATAADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class DebitMyDataAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit DebitMyDataAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const override;
};

/** DebitMyData address widget validator, checks for a valid debitmydata address.
 */
class DebitMyDataAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit DebitMyDataAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const override;
};

#endif // DEBITMYDATA_QT_DEBITMYDATAADDRESSVALIDATOR_H
